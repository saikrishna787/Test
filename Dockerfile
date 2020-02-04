########################################################
# Dockerfile to demonstrate the behaviour of ENTRYPOINT
########################################################
# Build from base image busybox:latest
FROM busybox:latest
# Author: Dr. Peter
MAINTAINER Dr. Peter <peterindia@gmail.com>
# Set entrypoint command
ENTRYPOINT ["echo", "Dockerfile ENTRYPOINT demo"]
