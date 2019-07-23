FROM node:alpine

MAINTAINER Liu Wei <t-liu@qq.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && yarn config set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass -g &&  npm config set registry http://registry.npm.taobao.org/ && yarn config set registry http://registry.npm.taobao.org/ && yarn global add @vue/cli

RUN mkdir /code
COPY . /code

WORKDIR /code
