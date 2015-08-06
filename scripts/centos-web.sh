#!/bin/bash

# Configure Apache to start at boot
chkconfig --add httpd
chkconfig httpd on
service httpd stop

# Remove default webserver root folder and
# create symlink from shared folder
rm -rf /var/www/html
ln -s /vagrant /var/www/html

# start Apache
service httpd start

# Install PHP
yum install -y php php-cli php-common php-devel php-mysql

# Install MySQL
yum install -y mysql mysql-server mysql-devel

# Configure MySQL Service to start at boot
chkconfig --add mysqld
chkconfig mysqld on

service httpd restart