
# Jenkins-Dockerfile
This includes the Dockerfile used to create a Jenkins's instance in a Docker Container as well as a NGiNX web proxy server to front-end Jenkins. It uses host storage and a docker network for container communication.

Reference article: https://engineering.riotgames.com/news/putting-jenkins-docker-container

# Makefile Commands
  make build - To Build the entire environment
  
  make run - To Run the entire environment
  
  make stop - To Stop the environment
  
  make clean-data - To Stop the environment and delete containers
  
  make clean-images - To remove dangling images
  
  make jenkins-log - To show the Jenkins Log

# Build the updated docker-compose.yml Command
docker-compose -p jenkins build

# Bring up the Jenkins and NGiNX Containers Command (See docker-compose.yml script for details)
docker-compose -p jenkins up -d

# Bring down the Jenkins and NGiNX Containers Command 
docker-compose -p jenkins down

# Access Jenkins URL
http://hostname or IP

Note, current configuration uses Docker storage volumes that are kept by the host OS, so they stay live even if containers are deleted.
