FROM centos:7

ADD ./zaark.repo /etc/yum.repos.d/zaark.repo

RUN yum install -y \
  autoconf \
  gcc \
  gcc-c++ \
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
  ssh \
  which

RUN mkdir /build
