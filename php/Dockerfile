FROM yuridefranca/ubuntu:1.1.1

EXPOSE 80

WORKDIR /var/www/html

#Installing php
ARG PHP_VERSION=8.2
RUN sudo add-apt-repository ppa:ondrej/php &&\
    sudo apt install -y php${PHP_VERSION}  &&\
    sudo apt-get install -y php${PHP_VERSION}-bcmath &&\
    sudo apt-get install -y php${PHP_VERSION}-cli &&\
    sudo apt-get install -y php${PHP_VERSION}-common &&\
    sudo apt-get install -y php${PHP_VERSION}-curl &&\
    sudo apt-get install -y php${PHP_VERSION}-fpm &&\
    sudo apt-get install -y php${PHP_VERSION}-gd &&\
    sudo apt-get install -y php${PHP_VERSION}-mbstring &&\
    sudo apt-get install -y php${PHP_VERSION}-mysql &&\
    sudo apt-get install -y php${PHP_VERSION}-xml &&\
    sudo apt-get install -y php${PHP_VERSION}-zip

#Installing composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installing supervisor
RUN sudo apt install supervisor

#Installing nginx
RUN sudo apt-get install -y nginx &&\
    rm /etc/nginx/sites-available/*

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/sites-available /etc/nginx/sites-available

COPY ./public /var/www/html/public

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]



