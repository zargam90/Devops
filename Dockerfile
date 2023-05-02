FROM- centos:latest
MAINTAINER zargam.gcp@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/biznews.zip /var/www/html
WORKDIR /var/www/html
RUN unzip biznews.zip
RUN cp -rvf free-news-website-template/* .
RUN rm -rf biznews.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUD"]
EXPOSE 80
