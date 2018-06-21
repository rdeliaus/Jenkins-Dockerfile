FROM centos:centos7
LABEL maintainer="richard.delia@cognizant.com"

RUN yum -y install socat && \
    yum clean all

VOLUME /var/run/docker.sock

# docker tcp port
EXPOSE 2375

# socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock

ENTRYPOINT ["socat", "TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock"]
