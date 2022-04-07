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

# Get the detailed information about a container named test-container 
docker container inspect test-container 

# Get the details of the usage of Memory, CPU, Network, IO etc 
docker container stats 

# Get the list of processes and process ids of the container for inspection 
docker container top test-container

# To get the logs of container. These are logs that are getting written to the stdout from the processes inside the container 
docker container logs test-container 

# To stream the logs of a container 
docker container logs -f test-container 

# To get the system events of docker
docker system events --since 60m 