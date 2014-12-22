FROM yvess/dev
MAINTAINER Yves Serrano <y@yas.ch>

RUN apt-get update && apt-get install -yq \
        python-dev && \
    curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python2.7 && \
    pip install virtualenv && virtualenv /var/py27
ADD root/_bashrc /root/.bashrc
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
