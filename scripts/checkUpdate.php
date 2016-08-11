#!/usr/bin/php
<?php

$dir = dirname(__FILE__);
if (!file_exists($dir . '/configuration.php') || !file_exists($dir . '/README.txt')) {
    echo 1;
    exit(1);
}

include_once $dir . '/vendor/autoload.php';
include_once $dir . '/configuration.php';

// Configuration.php is empty
if (!isset($db_host)) {
    echo 1;
    exit(1);
}

use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$capsule->addConnection([
    'driver'    => 'mysql',
    'host'      => $db_host,
    'database'  => $db_name,
    'username'  => $db_username,
    'password'  => $db_password,
    'charset'   => $mysql_charset,
    'collation' => $mysql_charset . '_unicode_ci',
    'prefix'    => '',
]);

$attempt = 0;

do {
    try {
        $settings = $capsule->getConnection()->table('tblconfiguration')->where('setting', '=', 'Version')->get();
        if ($settings) {
            $data = file_get_contents($dir . '/README.txt');
            if (preg_match('/Release Version:\s+?([\d\.]+)\s+?\((.*)\)/', $data, $match)) {
                $version = trim($match[1]);
                $release = trim($match[2]);

                if ($release == $settings[0]['value']) {
                    echo 0;
                    exit(0);
                }
            }
        }
        $attempt = 10;
        echo 1;
        exit(1);
    } catch (Exception $e) {
        $attempt++;
        sleep(5);
    }
} while ($attempt < 10);

echo 1;
exit(1);