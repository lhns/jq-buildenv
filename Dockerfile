FROM centos:6

COPY ["centos6-eol.repo", "/etc/yum.repos.d/CentOS-Base.repo"]

RUN yum install -y -- environment-modules perl perl-Test-Harness wget \
 && wget http://repo.okay.com.mx/centos/6/x86_64/release/m4-1.4.16-9.el6.x86_64.rpm \
 && wget http://repo.okay.com.mx/centos/6/x86_64/release/autoconf-2.69-12.el6.noarch.rpm \
 && wget http://repo.okay.com.mx/centos/6/x86_64/release/automake-1.14-1.el6.x86_64.rpm \
 && wget http://springdale.princeton.edu/data/springdale/6/x86_64/os/Computational/bison3-3.0.2-3.sdl6.x86_64.rpm \
 && rpm -i -- *.rpm \
 && rm -f -- *.rpm \
 && yum install -y -- flex git libtool make
