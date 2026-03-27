#!/bin/bash
set -e

echo 'Setting up Docker...'
sudo apt update
curl -sSL https://get.docker.com/ | sudo sh
sudo usermod -aG docker vagrant

echo 'Testing Docker run Hello-World'
docker run --rm hello-world

echo 'Setting up K3s...'
curl -sfL https://get.k3s.io | sh -

echo 'install kubectl' 
sudo snap install kubectl