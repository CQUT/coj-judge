FROM ubuntu:14.04

MAINTAINER Kebe Liu <mail@kebe7jun.com>

RUN apt-get update && \
    apt-get install make flex g++ clang libmysql++-dev

RUN mkdir /coj

COPY . /coj

WORKDIR /coj

RUN sh install.sh

CMD ["/usr/bin/judged", "-d"]