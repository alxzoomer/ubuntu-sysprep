#!/bin/bash

sudo apt-get install openssh-server -y
sudo systemctl start sshd

sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install git python ansible -y

mkdir -p ~/projects

git clone https://github.com/alxzoomer/ubuntu-sysprep.git ~/projects/ubuntu-sysprep

# git clone git@github.com:alxzoomer/ubuntu-sysprep.git ~/projects/ubuntu-sysprep
