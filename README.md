# Jenkins-Dockerfile
This includes the Dockerfile used to create a Jenkins's instance in a Docker Container.

# Create Docker Image Command
docker build -t myjenkins .

# Start Jenkins Container
docker run -p 8080:8080 --name=jenkins-master -d myjenkins

