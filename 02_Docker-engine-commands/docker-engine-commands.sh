#!/bin/bash

# Create a container with image httpd
docker container create httpd

# List all running containers
docker container ls 

# List all containers 
docker container ls -a 

# Show the last created containers 
docker container ls -l 

# List the short container id of all running containers
docker container ls -q 

# List the short container ids of all containers (stopped, running, exited, etc)
docker container ls -aq 

# Start a container (Created earlier)
docker container start httpd

# Run a container (Create and start at the same time)
docker container run httpd

# Run a container in interactive mode 
docker container run -it ubuntu 

# Run a container with container name
docker container run -it --name=webapp ubuntu 

# Rename a container with new name
docker container rename webapp new-name

# Run a container in detached mode
docker container run --name test-container -d httpd 

# Reattach to the test container that we created earlier 
docker container attach test-container 