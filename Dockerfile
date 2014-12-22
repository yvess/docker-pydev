FROM yvess/dev
MAINTAINER Yves Serrano <y@yas.ch>

RUN curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python2.7 && \
    pip install virtualenv && virtualenv /var/py27
ADD root/_bashrc /root/.bashrc
