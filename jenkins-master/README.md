# Jenkins-Dockerfile
This includes the Dockerfile used to create a Jenkins's instance in a Docker Container.
Note, these commands do not need to be used explicitly as they are already included in the docker-compose.yml script which launches both Jenkins and NGiNX.

# Create Docker Image Command
docker build -t myjenkins .

# Start Jenkins Container Command
docker run -p 8080:8080 --name=jenkins-master -d myjenkins

# Start Jenkins Container and Mount the Host Storage as two Container Volumes (includes additional ports for Java)
docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master --mount source=jenkins-log,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home -d myjenkins

# Start Jenkins Container and attach a Docker Network (note, the network first needs to be created)
docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master --network jenkins-net --mount source=jenkins-log,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home -d myjenkins
