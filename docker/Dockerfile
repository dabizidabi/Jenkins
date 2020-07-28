FROM ubuntu:18.04

RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \ 
    apt-get -y install nodejs && \
    apt-get -y install git && \
    apt-get -y install apache2 && \
    apt-get clean

RUN git clone https://github.com/dabizidabi/starFall.git /myapp/ && \
    mv /myapp/* /var/www/html/
    
EXPOSE 80

CMD apachectl -D FOREGROUND
