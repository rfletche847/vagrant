#!/bin/bash
#

#start MySQL
service mysqld start

mysql -u root -e "SHOW DATABASES";

#Download starter content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/rfletche847/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/rfletche847/vagrant/master/files/info.php
