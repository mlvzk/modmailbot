FROM node:12-alpine

WORKDIR /usr/local/share/modmailbot

RUN apk add git

RUN git clone --depth 1 --branch v3.3.0 https://github.com/Dragory/modmailbot . \
 && npm ci --production

CMD ["npm", "start"]
