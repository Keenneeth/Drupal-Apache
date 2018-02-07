#!/bin/bash
echo "Script de Drupal"
cd ~
yum install wget -y 
wget -c https://ftp.drupal.org/files/projects/drupal-8.2.6.tar.gz
tar -xf drupal-8.2.6.tar.gz
cp -r drupal-8.2.6/* /var/www/html/
chown -R apache:apache /var/www/html/
cd /var/www/html/sites/default/
cp default.settings.php settings.php
chmod 777 settings.php
sed -i 's/databasename/wordb/g' settings.php
sed -i 's/sqlusername/root/g' settings.php
sed -i 's/sqlpassword/root/g' settings.php
sed -i 's/localhost/db/g' settings.php
exec /usr/sbin/apachectl -DFOREGROUND
