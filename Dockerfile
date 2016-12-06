FROM centos:7
MAINTAINER jjarosz@axway.com

COPY get-pip.py get-pip.py
COPY requirements.txt requirements.txt

RUN yum install -y \
  epel-release \
  python-devel \
  libxml2 \
  libxml2-devel \
  libxslt \
  libxslt-devel

RUN yum install -y python34
RUN /usr/bin/python3 get-pip.py
RUN pip3 install -r requirements.txt 

