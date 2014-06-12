# perl-build

This docker image installs make, gcc and [perl-build]() to /usr/bin/perl-build on CentOS

## Usage

```
$ docker run -t -i kazeburo/perl-build bash -l
bash-4.1# perl-build 5.16.2 /opt/perl-5.16/
```

or Dockerfile

```
FROM kazeburo/perl-build
RUN perl-build 5.18.1 /opt/perl-5.18/
RUN echo 'export PATH=/opt/perl-5.18/bin:$PATH' > /etc/profile.d/xbuild-perl.sh
ENV PATH /opt/perl-5.18/bin:${PATH}
CMD perl -v
```




