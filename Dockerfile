FROM node:alpine

MAINTAINER Liu Wei <t-liu@qq.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add python2 make && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&  npm config set registry http://registry.npm.taobao.org/ && yarn config set registry http://registry.npm.taobao.org/ && yarn global add @vue/cli

RUN mkdir /code
COPY . /code

WORKDIR /code
