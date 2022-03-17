FROM ubuntu:14.04
MAINTAINER dodomp0114
LABEL "purpose"="test"
RUN apt-get update
RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.txt"]
EXPOSE 80
CMD apachectl --DFOREGROUND
