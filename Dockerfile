##
## Build
##
FROM node:lts-alpine as builder
LABEL Fonoster Team <fonosterteam@fonoster.com>

COPY . /build
WORKDIR /build

RUN npm install && npm run build && npm pack

##
## Runner
##
FROM node:lts-alpine as runner

COPY --from=builder /build/nodejs-service-*.tgz ./
RUN npm install -g nodejs-service-*.tgz

ENTRYPOINT ["sh", "-c"]
CMD [ "nodejsservice" ]