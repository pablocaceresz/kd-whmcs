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

WHMCS_ARCHIVE=$(ls /whmcs_*.zip)
WHMCS_ARCHIVE_RELEASE=$(ls /whmcs_*.zip | sed 's/whmcs_\(.*\)\.zip/\1/')

rm -f /usr/share/nginx/html/*.html

# Check if update needed
if [[ ! -e "/usr/share/nginx/html/.release" || $(cat /usr/share/nginx/html/.release) != $WHMCS_ARCHIVE_RELEASE ]]; then
    unzip -o /$WHMCS_ARCHIVE -d /usr/share/nginx/html && cp -rf /usr/share/nginx/html/whmcs/* /usr/share/nginx/html && rm -rf /usr/share/nginx/html/whmcs
    touch /usr/share/nginx/html/configuration.php
    chown apache:apache /usr/share/nginx/html/configuration.php && chmod 0777 /usr/share/nginx/html/configuration.php && chmod 0777 /usr/share/nginx/html/templates_c
    cp /loghandler.php /usr/share/nginx/html/install
    chmod -R 0777 /usr/share/nginx/html/install
fi

rm -f /whmcs_*.zip
rm -f /loghandler.php

# Again set the right permissions (needed when mounting from a volume)
chown -Rf apache.apache /usr/share/nginx/html/

# Start supervisord and services
/usr/bin/supervisord -n -c /etc/supervisord.conf

grep 'php -q /usr/share/nginx/html/crons/cron.php' crontab -l || echo '0 0  *  *  * php -q /usr/share/nginx/html/crons/cron.php' | crontab -