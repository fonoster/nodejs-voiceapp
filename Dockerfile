##
## Build
##
FROM node:lts-alpine as builder
LABEL Fonoster Team <fonosterteam@fonoster.com>

WORKDIR /build
COPY . .

RUN apk add --no-cache --update git python3 make g++ && \
  npm install && \
  npm run build && \
  npm pack

##
## Runner
##
FROM node:lts-alpine as runner

COPY --from=builder /build/nodejs-voiceapp-*.tgz .

RUN apk add --no-cache --update git python3 make g++ && \
  npm install -g nodejs-voiceapp-*.tgz && \
  rm -rf nodejs-voiceapp-*.tgz && \
  apk del git python3 make g++

CMD [ "runner" ]