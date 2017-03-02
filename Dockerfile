FROM ubuntu:14.04

MAINTAINER Kebe Liu <mail@kebe7jun.com>

RUN mkdir /coj

COPY . /coj

WORKDIR /coj

RUN sh install.sh

CMD ["/usr/bin/judged", "-d"]