########################################################
# Dockerfile to demonstrate the behaviour of ENTRYPOINT
########################################################
# Build from base image busybox:latest
FROM ubuntu:14.04
# Author: Sai Krishnar
MAINTAINER Saikrishna <saikrishna787@gmail.com>
#Install apache2 package
RUN apt-get update && \
     apt-get install -y apache2 && \
     apt-get clean
# Set the log directory PATH
ENV APACHE_LOG_DIR /var/log/apache2
# Launch apache2 server in the foreground
CMD service apache2 start
CMD service apache2 status

