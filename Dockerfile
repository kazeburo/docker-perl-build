FROM centos:latest
MAINTAINER Masahiro Nagano <kazeburo@gmail.com>

# fix locale error. requires for centos:latest
RUN yum -y reinstall glibc-common

RUN yum -y install tar bzip2
RUN yum -y install perl gcc make 
RUN yum -y install patch
RUN yum clean all
RUN curl -s https://raw.githubusercontent.com/tokuhirom/Perl-Build/master/perl-build > /usr/bin/perl-build
RUN perl -pi -e 's%^#!/usr/bin/env perl%#!/usr/bin/perl%g' /usr/bin/perl-build
RUN chmod +x /usr/bin/perl-build

CMD perl-build --version

