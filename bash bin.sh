#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y golang python3-pip git openssh-server

# Install Python requirements
pip3 install flask requests

# Setup SSH directory
mkdir -p ~/.ssh
chmod 700 ~/.ssh