#!/bin/bash -v

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D" >> /etc/sources.l$
sudo apt-get update -y
sudo apt-get install docker-engine docker git

sudo git clone https://github.com/wirkmood/Ansible_script /home/
