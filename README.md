# perl-build docker image

This docker image installs make, gcc and [perl-build]() to /usr/bin/perl-build on ubuntu

## Usage

```
$ docker run -t -i kazeburo/perl-build bash -l
root@2599e6978e69:/# --version
1.08
```

or Dockerfile

```
FROM kazeburo/perl-build
RUN perl-build 5.18.1 /opt/perl-5.18/
RUN echo 'export PATH=/opt/perl-5.18/bin:$PATH' > /etc/profile.d/xbuild-perl.sh
ENV PATH /opt/perl-5.18/bin:${PATH}
CMD perl -v
```




