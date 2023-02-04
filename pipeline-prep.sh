#!/bin/bash

# add jenkins as a user
sudo useradd jenkins


# patching server first
yum install update -y

yum upgrade -y

# install docker
yum install docker -y

# add jenkins user to docker group
usermod -aG docker jenkins 

# add user jenkins to sudoers group and run all commands without asking for passwd
echo "jenkins  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# switch to user jenkins in the system
sudo -jenkins





