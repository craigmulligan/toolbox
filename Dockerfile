FROM debian:stretch-20210408

MAINTAINER Craig Mulligan <git@hobochild.com>
LABEL version="20170712"
LABEL name="toolbox"
RUN apt-get update -y && \ 
    apt-get install -y \ 
    strace \
    netcat-openbsd \
    net-tools \
    nmap \
    curl \
    tcpdump \
    htop \
    vim
