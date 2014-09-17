FROM nitrousio/ubuntu:trusty

MAINTAINER Nitrous.IO <hello@nitrous.io>

RUN apt-get update && apt-get -y install php5 && apt-get -y install php5-mysql && apt-get clean

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
