#!/bin/bash
#

# Install MySQL
yum install -y mysql mysql-server mysql-devel

# Configure MySQL Service to start at boot
chkconfig --add mysqld
chkconfig mysqld on

#start MySQL
service mysqld start

mysql -u root -e "SHOW DATABASES";
