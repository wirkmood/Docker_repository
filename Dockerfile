# Choice your image base, for this template I choose jessie of debian version 
FROM debian:jessie

MAINTAINER Gianni BENINCASA <benincasa.gianni@gmail.com>

###############################
# update & apache installation
###############################

# Do an update on debian 
RUN (apt-get update)
# Install your suitable package
RUN apt-get install -y apache2 git nano sudo

#############################
# Configure apache 
#############################

# delete the default web apache file
RUN rm -r /var/www/html
# copy the website with git on /var/www/html
RUN git clone https://github.com/wirkmood/WebSite /var/www/html

RUN echo "ServerName Localhost" >> /etc/apache2/apache2.conf

# start apache service
ENTRYPOINT service apache2 start && bash

# expose the port 22 and 80
EXPOSE 22 80
