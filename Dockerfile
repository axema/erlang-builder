FROM centos:7

ADD ./zaark.repo /etc/yum.repos.d/zaark.repo

RUN yum makecache && yum install -y \
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
  erlang-20.3.4 \
  which

RUN wget https://s3.amazonaws.com/rebar3/rebar3 && mv rebar3 /usr/bin && chmod +x /usr/bin/rebar3

ENV PATH="/usr/bin:${PATH}"

RUN mkdir /build
