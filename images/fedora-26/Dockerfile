FROM fedora:26

RUN yum -y install dnf-plugins-core
RUN dnf config-manager --add-repo http://repos.qoretechnologies.com/qoretech/Fedora_26/
RUN rpm --import http://repos.qoretechnologies.com/qoretech/Fedora_26/repodata/repomd.xml.key
RUN yum -y install sudo cmake gcc gcc-c++ vim make qore qore-devel

RUN echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN useradd -u 1000 -m docker

USER docker
WORKDIR /home/docker
