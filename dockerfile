FROM node:7.7.2-alpine

WORKDIR /usr/app

ARG http_proxy=${http_proxy}
ARG https_proxy=${https_proxy}

RUN env

COPY package.json .

RUN npm install 

COPY . .