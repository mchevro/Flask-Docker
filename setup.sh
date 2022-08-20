#!/bin/sh

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt update
sudo apt install docker-ce
sudo apt install docker-compose

# Install Module Python3
sudo apt install python3-pip
sudo apt install python3.8-venv

# Install Gunicorn
sudo apt install gunicorn

# Running Docker Service
docker-compose up -d --build --scale app=5