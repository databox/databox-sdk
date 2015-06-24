FROM ubuntu:14.04

MAINTAINER otobrglez

RUN apt-get update -qq

RUN apt-get -y install \
  build-essential \
  libssl-dev \
  curl \
  wget \
  git-core

RUN curl -sL https://deb.nodesource.com/setup_dev | sudo bash -

RUN apt-get update -qq

RUN apt-get -y install \
  nodejs
