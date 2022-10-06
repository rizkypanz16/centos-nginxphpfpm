FROM centos/systemd
MAINTAINER rizkypanji6483@gmail.com

RUN yum update -y && yum install -y epel-release && yum update -y && yum -y install nano wget
RUN yum -y install nginx
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx-defaul.conf
RUN yum -y install php php-mbstring php-pear php-fpm
RUN mv /etc/php-fpm.d/www.conf /etc/php-fpm.d/www-default.conf
COPY www.conf /etc/php-fpm.d/www.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN echo "<?php phpinfo() ?>" > /usr/share/nginx/html/info.php 

EXPOSE 80
