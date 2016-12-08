# Version: 0.1.0
FROM centos:7
MAINTAINER Jakub Jarosz "jjarosz@axway.com"
LABEL version="0.1.0"
LABEL location="Dublin" type="Toolbox" role="OVF Tool"

ADD [ \
  "get-pip.py", \
  "requirements.txt", \
  "VMware-ovftool-4.2.0-4586971-lin.x86_64.bundle", \
  "/tmp/" \
]


RUN yum install -y \
  epel-release \
  python-devel \
  libxml2 \
  libxml2-devel \
  libxslt \
  libxslt-devel

# we use python3 for all new projects
RUN yum install -y python34
RUN /usr/bin/python3 /tmp/get-pip.py
RUN pip3 install -r /tmp/requirements.txt 

# install vmware ovftool and accept terms & conditions
RUN /bin/bash /tmp/VMware-ovftool-4.2.0-4586971-lin.x86_64.bundle --eulas-agreed --required --console \
  && rm -rf /tmp/VMware-ovftool-4.2.0-4586971-lin.x86_64.bundle

# run bash when docker image starts
CMD ["/bin/bash"]

