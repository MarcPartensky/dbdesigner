FROM python:2.7.17-alpine

RUN apk add nodejs npm

WORKDIR /root
COPY package.json package-lock.json webpack.config.js ./
RUN npm install
COPY dist ./
ENTRYPOINT ["node", "./startUp.js"]
