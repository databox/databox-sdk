FROM ubuntu:14.04

MAINTAINER otobrglez "otobrglez@gmail.com"

VOLUME /sdks
WORKDIR /sdks
ADD ./sdks /sdks

RUN apt-get update -qq

RUN apt-get install -y apt-transport-https autoconf automake bison build-essential \
  curl g++ gawk gcc git-core gpa libc6-dev libcurl4-openssl-dev libffi-dev libgdbm-dev libncurses5-dev \
  libreadline-dev libreadline6-dev libsqlite3-dev libssl-dev libtool \
  libxml2-dev libxslt1-dev libyaml-dev make openssh-server openssl patch pkg-config \
  python-dev python-pip python-setuptools python-software-properties \
  software-properties-common sqlite3 ssh-client wget zlib1g-dev

# NodeJS (latest)
RUN curl -sL https://deb.nodesource.com/setup_dev | sudo bash -
RUN apt-get -y install nodejs

# Ruby & RVM
RUN curl -sSLk https://get.rvm.io | bash
RUN /bin/bash -l -c "rvm requirements"
RUN /bin/bash -l -c "rvm install 2.2.2"
RUN /bin/bash -l -c "rvm use 2.2.2 --default"
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Python
#RUN pip install --upgrade virtualenv; \
#  pip install --upgrade virtualenvwrapper

CMD ["/sbin/my_init"]
