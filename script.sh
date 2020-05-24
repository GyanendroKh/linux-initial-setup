#!/bin/bash

# Updating and Upgrading packages.
echo 'Updating and Configuring packages...'
sudo apt update
sudo apt upgrade -y

sudo apt install software-properties-common -y
sudo dpkg --add-architecture i386

# Installing nginx
echo 'Installing nginx'
sudo apt install -y nginx

# Installing Php7.4
echo 'Installing Php7.4'
sudo add-apt-repository ppa:ondrej/php -y -u
sudo apt update

sudo apt-get install -y --no-install-recommends php7.4 php7.4-{bcmath,bz2,intl,gd,mbstring,mysql,zip,fpm}

# Installing NodeJs
echo 'Installing NodeJs'
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install yarn -g

# Installing Python3
echo 'Installing Python3'
sudo apt install -y python3
sudo apt install -y python3-pip python3-setuptools python3-venv

# Installing Java
echo 'Installing Java14'
sudo apt install -y openjdk-14-jdk

# Installing MySql
echo 'Installing Mysql'
sudo apt install -y mysql-server

# Installing Steam
echo 'Installing Steam'
sudo apt install steam

# Installing other packages
echo 'Installing some other packages'
sudo apt install -y htop rhythmbox blender gimp spotify-client inkscape gparted gnome-tweaks gnome-tweak-tool
