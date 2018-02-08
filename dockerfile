FROM node:7.7.2-alpine
ARG proxy
ARG sproxy

WORKDIR /usr/app

ENV http_proxy="http://10.0.128.13:3128"
ENV https_proxy="https://10.0.128.13:3128"

COPY package.json .

RUN npm install 

COPY . .