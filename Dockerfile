FROM debian:jessie
MAINTAINER Gianni BENINCASA <gianni.benincasa@devoteam.com>
RUN (apt-get update)
RUN apt-get install -y apache2 git nano sudo

RUN rm -r /var/www/html
RUN git clone https://github.com/wirkmood/WebSite /var/www/html


RUN echo "ServerName Localhost" >> /etc/apache2/apache2.conf
ENTRYPOINT service apache2 start && bash

EXPOSE 22 80
