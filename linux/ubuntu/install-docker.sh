#!/bin/bash
# remove docker
sudo apt-get remove docker docker-engine docker.io
# update apt repo
sudo apt-get update
# add tool
sudo apt-get install  apt-transport-https  ca-certificates  curl software-properties-common
# add docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# confirm key
sudo apt-key fingerprint 0EBFCD88
# add stable repo
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
# updete apt repo
sudo apt-get update
# install docker-ce
sudo apt-get install docker-ce
# #
# and you can check version of docker
# apt-cache madison docker-ce
# then install by
# sudo apt-get install docker-ce=<VERSION>
# #

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# add priviledge
sudo chmod +x /usr/local/bin/docker-compose

# install docker-machine
sudo curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` > /tmp/docker-machine
sudo chmod +x /tmp/docker-machine
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
#test
docker --version
docker-compose --version
docker-machine version
