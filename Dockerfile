FROM ubuntu:latest
MAINTAINER ashu12.meshram@gmail.com
RUN apt update -y
RUN apt install -y apache2 zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["apache2", "-D",  "FOREGROUND"]
EXPOSE 80
