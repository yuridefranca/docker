FROM ubuntu:22.04

LABEL maintainer=yuridefranca@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get install -y curl &&\
    apt-get install -y git &&\
    apt-get install -y iputils-ping &&\
    apt-get install -y locales locales-all &&\
    apt-get install -y nano &&\
    apt-get install -y software-properties-common &&\
    apt-get install -y sudo &&\
    apt-get install -y tzdata &&\
    apt-get install -y vim &&\
    apt-get install -y wget

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

# Configuring Timezone
RUN echo "America/Sao_Paulo" > /etc/timezone &&\
    rm -f /etc/localtime &&\
    dpkg-reconfigure -f noninteractive tzdata

# Installing oh-my-zsh
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.4/zsh-in-docker.sh)" -- \
    -t fino-time \
    -p https://github.com/zsh-users/zsh-completions

RUN sudo rm /root/.zshrc

COPY oh-my-zsh/.zsh_history /root/.zsh_history
COPY oh-my-zsh/.zshrc /root/.zshrc