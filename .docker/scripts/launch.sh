#!/bin/bash
# add your custom commands here that should be executed every time the docker container starts
echo "Starting docker container..."

# start ssh server
sudo service ssh start
# Clones the app repository from GitHub

