FROM docker:dind

ENV DEBIAN_FRONTEND noninteractive

RUN apk update
RUN apk add openjdk8-jre wget bash git openssh

ENV DOCKER_VERSION 1.12.1-0~trusty

RUN adduser -D -h /home/jenkins -s /bin/sh jenkins
RUN echo "jenkins:jenkins" | chpasswd
ENV HOME /home/jenkins


ENTRYPOINT ["dockerd-entrypoint.sh"]
WORKDIR /home/jenkins
CMD []
