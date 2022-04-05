#!/bin/bash

# Find the version of Docker Engine
docker version 

# Find the version of Docker CLI
docker --version 

# Find more information about Docker host
docker system info

# Make Docker run during startup 
sudo systemctl enable docker 

# View the status of Docker on local machine
sudo systemctl status docker 

# Start docker manually
sudo dockerd 

# Start docker manually with debug mode 
sudo dockerd --debug 