FROM ubuntu:18.04

ADD . /root
ADD .bashrc /etc/bash.bashrc
ADD .profile /etc/profile
RUN chmod a+rwx /root && chmod a+rwx /root/*.sh

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

ARG BATS_VERSION=0.4.0

RUN apt-get update && \
    apt-get install -y locales && \
    locale-gen en_US.UTF-8 && \
    apt-get install -y apt-utils \
    apt-transport-https \
    software-properties-common \
    build-essential \
    r-base \
    r-base-dev \
    wget \
    zip \
    unzip \
    cmake \
    gcc \
    libcunit1-dev \
    libudev-dev \
    ca-certificates-java \
    mysql-client \
    libpng-dev \
    zlib1g-dev \
    libssl1.0.0/bionic \
    libssl-dev/bionic \
    openssl/bionic \
    libmysqlclient-dev \
    dpkg-dev \
    curl \
    libncurses5-dev \
    python \
    fort77 \
    xorg-dev \
    liblzma-dev \
    libblas-dev \
    gfortran \
    gcc-multilib \
    gobjc++ \
    gcc \
    g++ \
    vim \
    libbz2-dev \
    libz-dev \
    libopenblas-base \
    texinfo \
    r-cran-cairodevice \
    libcairo2 \
    libcairo2-dev \
    libglib2.0-dev/bionic \
    libtiff5 libtiff5-dev \
    libcurl4-openssl-dev \
    tcl-dev \
    tk-dev \
    libncursesw5-dev \
    libsqlite3-dev \
    tk-dev \
    libgdbm-dev \
    openjdk-8-jdk \
    openjdk-8-jre \
    libc6-dev \
    vim \
    libbz2-dev && \
    wget https://github.com/sstephenson/bats/archive/v\${BATS_VERSION}.tar.gz -O /tmp/bats.tar.gz && \
    cd /tmp && tar -xvzf bats.tar.gz && ./bats-\${BATS_VERSION}/install.sh /usr/local && \
    rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/*.list /tmp/*

