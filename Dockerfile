FROM centos:latest
MAINTAINER yogeeswar32@gmail.com
yum install httpd zip unzip -y
ADD https://https://www.free-css.com/assets/files/free-css-templates/download/page279/grad-school.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip grad-school.zip
RUN cp -rvf grad-school/*
RUN rm -rf grad-school grad-school.zip
CMD {"/usr/sbin/httpd", "-D", "FOREGROUND"}
EXPOSE 80
