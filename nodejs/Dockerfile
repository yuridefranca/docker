FROM yuridefranca/ubuntu:1.1.1

EXPOSE 80

WORKDIR /var/www/html

# Install NodeJS
ARG NODEJS_VERSION=20
RUN sudo apt-get update &&\
    sudo apt-get install -y ca-certificates gnupg &&\
    sudo mkdir -p /etc/apt/keyrings &&\
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg &&\
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODEJS_VERSION.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

RUN sudo apt-get update &&\
    sudo apt-get install -y nodejs &&\
    npm install --location=global pnpm &&\
    npm install --location=global yarn

#Installing nginx
RUN sudo apt-get install -y nginx &&\
    rm /etc/nginx/sites-available/*

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/sites-available /etc/nginx/sites-available

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY ./index.js /var/www/html/index.js

ENTRYPOINT [ "/entrypoint.sh" ]