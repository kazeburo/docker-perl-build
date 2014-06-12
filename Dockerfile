FROM ubuntu:trusty
MAINTAINER Masahiro Nagano <kazeburo@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales
RUN apt-get update 
RUN apt-get -y install git curl
RUN apt-get -y install perl build-essential
RUN curl -s https://raw.githubusercontent.com/tokuhirom/Perl-Build/master/perl-build > /usr/bin/perl-build
RUN perl -pi -e 's%^#!/usr/bin/env perl%#!/usr/bin/perl%g' /usr/bin/perl-build
RUN chmod +x /usr/bin/perl-build

CMD perl-build --version

