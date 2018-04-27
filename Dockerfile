FROM centos:7

ADD ./zaark.repo /etc/yum.repos.d/zaark.repo

RUN yum install -y \
  autoconf \
  gcc \
  m4 \
  mercurial \
  openssl-devel \
  ncurses-devel \
  rpm-build \
  tar \
  wget \
  zlib-devel \
  make \
  git \
  erlang \
  ssh

RUN mkdir /build
