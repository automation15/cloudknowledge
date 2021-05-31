FROM centos:latest
MAINTAINER ashokwaghela1591@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/daraz.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip daraz.zip
RUN cp -rvf daraz/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
