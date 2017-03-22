FROM centos:7

RUN yum -y install epel-release
RUN yum -y install wget gcc make e2fsprogs lz4

ADD install-singularity.sh /
RUN sh /install-singularity.sh

VOLUME /pwd/
WORKDIR /pwd/
