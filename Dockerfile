########################################################
# Dockerfile to demonstrate the behaviour of ENTRYPOINT
########################################################
# Build from base image busybox:latest
FROM busybox:latest
# Author: Sai Krishnar
MAINTAINER Saikrishna <saikrishna787@gmail.com>
# Set entrypoint command
RUN apt-get update && RUN apt-get install ssh*
ENTRYPOINT ["echo", "Dockerfile ENTRYPOINT demo"]
CMD service ssh start
ENTRYPOINT /bin/bash
