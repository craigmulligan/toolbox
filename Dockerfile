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
    vim \
    bc \
    bash \
    unzip

RUN curl -L https://github.com/yuya-takeyama/percentile/releases/download/v0.0.1/linux_386_0.0.1.zip > percentile.zip

RUN unzip percentile.zip && \
    chmod +x percentile && \
    mv percentile /usr/local/bin/percentile

RUN curl -L https://github.com/yuya-takeyama/ntimes/releases/download/v0.1.0/linux_386_0.1.0.zip > ntimes.zip 

# https://dev.to/yuyatakeyama/how-i-measure-response-times-of-web-apis-using-curl-6nh
RUN unzip ntimes.zip && \
    chmod +x ntimes && \
    mv ntimes /usr/local/bin/ntimes

COPY ./time_namelookup.sh .
