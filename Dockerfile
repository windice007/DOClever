FROM node:16

WORKDIR /app
COPY . .

RUN yarn config set registry https://registry.npm.taobao.org \
    && yarn config set phantomjs_cdnurl https://npm.taobao.org/mirrors/phantomjs \
    && yarn

EXPOSE 10000

ENTRYPOINT ["node","./Server/bin/www"]