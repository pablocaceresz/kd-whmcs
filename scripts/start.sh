#!/bin/bash

# Install Extras
if [ ! -z "$RPMS" ]; then
 yum install -y $RPMS
fi

# Display PHP error's or not
if [[ "$ERRORS" == "true" ]] ; then
  sed -i -e "s/error_reporting =.*/error_reporting = E_ALL/g" /etc/php.ini
  sed -i -e "s/display_errors =.*/display_errors = On/g" /etc/php.ini
fi

# Create path for PHP sessions
mkdir -p -m 0777 /var/lib/php/session

# Set PHP timezone
if [ -z "$PHPTZ" ]; then
  PHPTZ="Europe/London"
fi
echo date.timezone = $PHPTZ >>/etc/php.ini

# Tweak nginx to match the workers to cpu's

procs=$(cat /proc/cpuinfo |grep processor | wc -l)
sed -i -e "s/worker_processes 5/worker_processes $procs/" /etc/nginx/nginx.conf

PHPVERSION=$(php --version | grep '^PHP' | sed 's/PHP \([0-9]\.[0-9]*\).*$/\1/')
mkdir /usr/local/ioncube
cp /tmp/ioncube/ioncube_loader_lin_$PHPVERSION.so /usr/local/ioncube
echo zend_extension = /usr/local/ioncube/ioncube_loader_lin_$PHPVERSION.so >>/etc/php.ini

# Install the WHMCS
if [ ! -e /usr/share/nginx/html/.first-run-complete ]; then
  rm -f /usr/share/nginx/html/*.html
  unzip /whmcs.zip -d /usr/share/nginx/html && mv /usr/share/nginx/html/whmcs/* /usr/share/nginx/html && rmdir /usr/share/nginx/html/whmcs
  cat > /usr/share/nginx/html/configuration.php <<EOF
<?php
\$license = '${WHMCS_LICENSE:-nolicense}';
\$db_host = '127.0.0.1';
\$db_port = '3306';
\$db_username = 'whmcs';
\$db_password = 'whmcs';
\$db_name = 'whmcs';
\$cc_encryption_hash = 'uHHKBXgBnlfWNUe1boOaHdCBxEeLJOe3lLDMyJeLVjyz4Dr6S57p8zQv4V6DzbwL';
\$templates_compiledir = 'templates_c';
\$mysql_charset = 'utf8';
?>
EOF
  chown nginx:nginx /usr/share/nginx/html/configuration.php && chmod 0777 /usr/share/nginx/html/configuration.php && chmod 0777 /usr/share/nginx/html/templates_c
  rm -f /whmcs.zip
TERM=dumb php -- "127.0.0.1" "whmcs" "whmcs" "whmcs" <<'EOPHP'
<?php
// database might not exist, so let's try creating it (just to be safe)
$stderr = fopen('php://stderr', 'w');
list($host, $port) = explode(':', $argv[1], 2);
$maxTries = 10;
do {
    $mysql = new mysqli($host, $argv[2], $argv[3], '', (int)$port);
    if ($mysql->connect_error) {
        fwrite($stderr, "\n" . 'MySQL Connection Error: (' . $mysql->connect_errno . ') ' . $mysql->connect_error . "\n");
        --$maxTries;
        if ($maxTries <= 0) {
            exit(1);
        }
        sleep(3);
    }
} while ($mysql->connect_error);
$mysql->close();
EOPHP
  mysql -h 127.0.0.1 -D whmcs -pwhmcs < /dump.sql
  rm -f /dump.sql

  echo "Do not remove this file." > /usr/share/nginx/html/.first-run-complete
fi

# Again set the right permissions (needed when mounting from a volume)
chown -Rf nginx.nginx /usr/share/nginx/html/

# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf
