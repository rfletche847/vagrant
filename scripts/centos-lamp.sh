#!/bin/bash

# Update CentOS with any patches
yum update -y --exclude=kernel

# Install tools
yum install -y vim git unzip screen

# Install Apache
yum install -y httpd httpd-devel httpd-tools

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

#start MySQL
service mysqld start

mysql -u root -e "SHOW DATABASES";

#Download starter content

service httpd restart