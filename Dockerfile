########################################################
# Dockerfile to demonstrate the behaviour of ENTRYPOINT
########################################################
# Build from base image busybox:latest
FROM ubuntu:14.04
# Author: Sai Krishnar
MAINTAINER Saikrishna <saikrishna787@gmail.com>
# Set entrypoint command
RUN apt-get update
RUN apt-get -y  install ssh*
#Install apache2 package
RUN apt-get update && \
     apt-get install -y apache2 && \
     apt-get clean
# Set the log directory PATH
ENV APACHE_LOG_DIR /var/log/apache2
# Launch apache2 server in the foreground
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
