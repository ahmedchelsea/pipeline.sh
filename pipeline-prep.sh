#!/bin/bash

# add jenkins as a user
sudo useradd jenkins

# give jenkins user a passwd
echo 'jenkins:ahmeduser123@#' | chpasswd

# patching server first
yum install update -y

yum intsall upgrade -y 

# install docker
yum install docker.io -y

# add jenkins user to docker group
usermod -aG docker jenkins 

# add user jenkins to sudoers group and run all commands without asking for passwd
echo "jenkins  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# switch to user jenkins in the system
su -jenkins





