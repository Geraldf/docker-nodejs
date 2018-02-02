FROM node:7.7.2-alpine

WORKDIR /usr/app

ENV http_proxy=10.70.20.17:8080
ENV https_proxy=10.70.20.17:8080

COPY package.json .

RUN npm install 

COPY . .