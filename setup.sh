#!/usr/bin/env bash

apt-get update
# apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

sudo apt-get install make mc curl git python-software-properties -y



sudo add-apt-repository ppa:ondrej/php5-5.6 -y
sudo apt-get update -y
# sudo apt-get upgrade -y
sudo apt-get install php5 -y



sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server


curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

#phpMyAdmin
wget http://optimate.dl.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.0.9/phpMyAdmin-4.0.9-english.tar.gz
tar -xzvf phpMyAdmin-4.0.9-english.tar.gz
sudo mkdir /usr/share/phpmyadmin
sudo mv phpMyAdmin-4.0.9-english/* /usr/share/phpmyadmin/

sudo rm -rf /var/www
sudo ln -fs /vagrant /var/www

echo "setup.sh is executed."