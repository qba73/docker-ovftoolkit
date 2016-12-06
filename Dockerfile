FROM centos:7
MAINTAINER jjarosz@axway.com

COPY get-pip.py get-pip.py
COPY requirements.txt requirements.txt
COPY VMware-ovftool-4.2.0-4586971-lin.x86_64.bundle /tmp/vmware.bundle


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
RUN /bin/bash /tmp/vmware.bundle --eulas-agreed --required --console && rm -rf /tmp/vmware.bundle

