FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
ADD index.html /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
