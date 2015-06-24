FROM ubuntu:14.04

MAINTAINER otobrglez "otobrglez@gmail.com"

VOLUME /sdks
WORKDIR /sdks
ADD ./sdks /sdks

RUN apt-get update -qq

RUN apt-get install -y curl patch gawk g++ gcc make libc6-dev patch libreadline6-dev zlib1g-dev libssl-dev \
  libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev \
  git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 \
  libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev \
  git-core wget gpa openssl ssh-client openssh-server apt-transport-https \
  build-essential software-properties-common \
  python-dev python-setuptools python-pip

# NodeJS (latest)
RUN curl -sL https://deb.nodesource.com/setup_dev | sudo bash -
RUN apt-get -y install nodejs

# Ruby & RVM
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.2.2"
RUN /bin/bash -l -c "rvm use 2.2.2 --default"
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Python
#RUN pip install --upgrade virtualenv; \
#  pip install --upgrade virtualenvwrapper

CMD ["/sbin/my_init"]
