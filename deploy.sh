#!/bin/bash
set -e

echo 'Running Docker build...'
docker build -t myapp ~/myapp

echo 'Moving on to k3s...'
docker save myapp | sudo k3s ctr images import -

echo 'Moving to deploment.yaml...'
sudo kubectl delete -f '/app/deployment.yaml' --ignore-not-found
sudo kubectl apply -f '/app/deployment.yaml'
