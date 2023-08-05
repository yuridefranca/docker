FROM yuridefranca/ubuntu:1.1.0

ARG NODEJS_VERSION=20
RUN curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION}.x | bash -
RUN apt-get install -y nodejs
RUN npm install --location=global npm &&\
    npm install --location=global yarn &&\
    npm install --location=global pnpm

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]