FROM phusion/baseimage
MAINTAINER Yves Serrano <y@yas.ch>

RUN curl -sL https://deb.nodesource.com/setup | sudo bash -

RUN apt-get update && apt-get install -yq \
        nodejs \
        git \
        mercurial \
        autoconf \
        build-essential \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        libxml2-dev \
        libxslt-dev \
        libyaml-dev \
        zlib1g-dev \
        libffi-dev \
        libcairo2-dev \
        libpango1.0-0 \
        libpython2.7-dev \
        python-httplib2 \
        dnsutils \
        links \
    && rm -rf /var/lib/apt/lists/*

RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python2 \
    && pip install virtualenv