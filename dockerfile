FROM node:7.7.2-alpine

WORKDIR /usr/app

ENV http_proxy="$proxy"
ENV https_proxy="$sproxy"

COPY package.json .

RUN npm install 

COPY . .