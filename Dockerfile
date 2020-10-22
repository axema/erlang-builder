FROM centos:7

RUN yum makecache && yum install -y epel-release https://repo.ius.io/ius-release-el7.rpm && yum install -y \
  autoconf \
  gcc \
  gcc-c++ \
  m4 \
  mercurial \
  openssl-devel \
  ncurses-devel \
  tar \
  wget \
  zlib-devel \
  make \
  which \
  rpm-build \
  git224

RUN wget -O otp.rpm https://github.com/rabbitmq/erlang-rpm/releases/download/v23.1.1/erlang-23.1.1-1.el7.x86_64.rpm && \
    rpm -ivh otp.rpm && rm otp.rpm

RUN wget https://s3.amazonaws.com/rebar3/rebar3 && mv rebar3 /usr/bin && chmod +x /usr/bin/rebar3

ENV PATH="/usr/bin:${PATH}"

RUN mkdir /build
