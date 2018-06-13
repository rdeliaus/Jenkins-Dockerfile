# Create Jenkins Docker Container
FROM jenkins/jenkins:2.112
LABEL maintainer="richard.delia@cognizant.com"
USER root
RUN mkdir /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins

# Set Java Memory and Connection sizes
ENV JAVA_OPTS="-Xmx7168m"
ENV JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"
