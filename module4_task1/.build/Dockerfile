FROM golang:1.15.8-buster

RUN apt-get update &&\
    wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz &&\
    tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz &&\
    mv hugo /usr/local/bin/ &&\
    curl -sL https://deb.nodesource.com/setup_14.x | bash - &&\
    apt -y install nodejs zip &&\
    npm install -g markdownlint-cli
