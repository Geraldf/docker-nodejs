FROM node:7.7.2-alpine
ARG proxy
ARG sproxy

WORKDIR /usr/app

ENV http_proxy=${http_proxy}
ENV https_proxy=${https_proxy}

RUN env

COPY package.json .

RUN npm install 

COPY . .