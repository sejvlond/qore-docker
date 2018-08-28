FROM fedora:28

RUN dnf -y install dnf-plugins-core
RUN dnf config-manager --add-repo https://repos.qoretechnologies.com/qorus-3.1-stable/Fedora_28/
RUN rpm --import https://repos.qoretechnologies.com/qorus-3.1-stable/Fedora_28/repodata/repomd.xml.key
RUN dnf -y install sudo cmake gcc gcc-c++ vim make qorus-3.1.1-qore qorus-3.1.1-qore-xml-module

RUN echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN useradd -u 1000 -m docker

USER docker
WORKDIR /home/docker
