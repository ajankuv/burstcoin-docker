FROM openjdk:8-jdk-alpine

ADD https://github.com/dawallet/burstcoin/releases/download/1.2.9c/burstcoin-1.2.9c.zip /app/burstcoin/

COPY docker /app/burstcoin/docker

WORKDIR /app/burstcoin

RUN apk add --no-cache --no-progress unzip \
 && unzip burstcoin-1.2.9c.zip \
 && ./docker/finalize.ash \
 && apk del --no-progress unzip

VOLUME ["/data"]

EXPOSE 8123 8125

ENTRYPOINT ["/app/burstcoin/docker/start.ash"]
