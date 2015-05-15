#!/bin/bash
kasutaja='lenovo'
#General 
sudo apt-get install -y git chromium-browser vlc indicator-cpufreq thinkfan mc p7zip-full unrar-free htop conky-all lm-sensors

#Python 2.x pacs 
sudo apt-get install -y python-dev
sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose python-tornado python-yaml


#Repos and update
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free" 
sudo apt-get update
#Sublime
sudo apt-get install -y sublime-text-installer

#Spotify
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 &&
sudo apt-get install -y spotify-client

#WebDev pack, Node and apache
sudo apt-get install -y apache2 nodejs-legacy npm

#Node pacs
sudo npm install -g grunt grunt-cli bower yo generator-karma generator-angular

#Rights
#Note to future self - home folder chmod 755 & chown www-data:www-data?
sudo a2enmod rewrite
sudo a2enmod userdir
sudo service apache2 reload
mkdir /home/$kasutaja/kood
sudo adduser $kasutaja www-data
sudo chown -R $kasutja:www-data /home/$kasutaja/kood
#sudo chmod -R 755 /home/$kasutaja/kood
sudo chmod -R 755 /home

#Git params
git config --global user.email "mikk351@gmail.com"
git config --global user.name "mikk351"
