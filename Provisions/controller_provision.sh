#!/bin/bash

# update and upgrade
sudo apt-get update -y

sudo apt-get upgrade -y

# setting up ansible
sudo apt-get update
  
sudo apt-get install software-properties-common
  
sudo apt-add-repository ppa:ansible/ansible
  
sudo apt-get update -y
  
sudo apt-get install ansible -y

sudo apt-get install tree -y

# copy host file
sudo cp /home/vagrant/hosts /etc/ansible/hosts

# Adding fingerprint to list of known hosts
ssh-keyscan -H 192.168.33.10 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan -H 192.168.33.11 >> /home/vagrant/.ssh/known_hosts