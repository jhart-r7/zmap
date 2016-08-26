FROM ubuntu:16.04

# Update OS
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# install zmap specific build dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential cmake libgmp3-dev gengetopt libpcap-dev flex byacc libjson-c-dev pkg-config libunistring-dev

# Make the working dir used by for the build
RUN mkdir -p /opt/build
