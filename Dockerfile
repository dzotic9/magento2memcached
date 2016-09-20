FROM devbeta/memcached:1.4.15
MAINTAINER Jelastic
RUN yum -y install openssh-server;\
        sed -ri "s|:INPUT DROP|:INPUT ACCEPT|g" /etc/sysconfig/iptables
