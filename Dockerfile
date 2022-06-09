##
## Build
##
FROM node:lts-alpine as builder
LABEL Fonoster Team <fonosterteam@fonoster.com>

COPY . /build
WORKDIR /build

RUN apk add --no-cache --update git python3 make g++; \ 
  npm install && npm run build && npm pack

##
## Runner
##
FROM node:lts-alpine as runner

COPY --from=builder /build/nodejs-voiceapp-*.tgz ./

RUN apk add --no-cache --update git python3 make g++; \
  npm install -g nodejs-voiceapp-*.tgz

ENTRYPOINT ["sh", "-c"]
CMD [ "nodejsvoiceapp" ]