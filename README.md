# Jenkins-Dockerfile
This includes the Dockerfile used to create a Jenkins's instance in a Docker Container.

# Create Docker Image Command
docker build -t myjenkins .

# Start Jenkins Container Command
docker run -p 8080:8080 --name=jenkins-master -d myjenkins

# Start Jenkins Container and Mount a Host Volume (includes additional ports for Java
docker run -p 8080:8080 -p 50000:50000 --name=jenkins-master --mount source=jenkins-log,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home -d myjenkins
