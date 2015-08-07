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

#Download starter content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/rfletche847/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/rfletche847/vagrant/master/files/info.php

service httpd restart