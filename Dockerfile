FROM ubuntu:14.04

MAINTAINER onatm <onatmercan@gmail.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive 
RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:brightbox/ruby-ng -y
RUN apt-get update

RUN apt-get install -y \
        ca-certificates \
        fonts-takao \
        gconf-service \
        gksu \
        libappindicator1 \
        libasound2 \
        libcurl3 \
        libgconf-2-4 \
        libnspr4 \
        libnss3 \
        libxss1 \
        libpango1.0-0 \
        build-essential \
        chrpath \
        libssl-dev \
        libxft-dev \
        libfreetype6 \
        libfreetype6-dev \
        libfontconfig1 \
        libfontconfig1-dev \
        pulseaudio \
        python-psutil \
        supervisor \
        wget \
        xbase-clients \
        xdg-utils \
        xvfb \
        ruby2.4 \
        ruby2.4-dev \
        freetds-dev \
        zlib1g-dev \
        qt5-default \
        qt5-qmake \
        libqt5webkit5-dev \
        unzip

RUN wget http://releases.mozilla.org/pub/firefox/releases/23.0.1/linux-x86_64/en-US/firefox-23.0.1.tar.bz2
RUN tar xjf firefox-23.0.1.tar.bz2
RUN sudo mv firefox /opt/firefox23
RUN sudo ln -s /opt/firefox23/firefox /usr/bin/firefox
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install bundler

RUN echo "%go ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV HOME /root
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LANG en_US.UTF-8

RUN locale-gen $LANG

VOLUME ["/home"]

CMD ["bash"]