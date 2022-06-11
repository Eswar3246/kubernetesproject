FROM centos:latest
MAINTAINER yogeeswar32@gmail.com
yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
EXPOSE 80
