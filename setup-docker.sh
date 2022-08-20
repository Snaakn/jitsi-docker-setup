#!/bin/bash

echo "------------------------------------------------"
echo "Setting up docker..."
echo "------------------------------------------------"

sudo apt update
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt install docker docker.io docker-compose -y
echo "Adding ${USER} to group 'docker'"
sudo usermod -aG docker ${USER}
sudo service docker start

echo "Docker installed."
su - ${USER}
