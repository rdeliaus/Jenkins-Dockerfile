# Jenkins-Dockerfile
This includes the Dockerfile used to create a Jenkins's instance in a Docker Container as well as a NGiNX web proxy server to front-end Jenkins. It uses host storage and a docker network for container communication.

Reference article: https://engineering.riotgames.com/news/putting-jenkins-docker-container

# Build the updated docker-compose.yml Command
docker-compose -p jenkins build

# Bring up the Jenkins and NGiNX Containers Command (See docker-compose.yml script for details)
docker-compose -p jenkins up -d

# Bring down the Jenkins and NGiNX Containers Command 
docker-compose -p jenkins down

# Access Jenkins URL
http://hostname or IP

Note, current configuration uses Docker storage volumes that are kept by the host OS, so they stay live even if containers are deleted.
