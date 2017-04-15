FROM openjdk:8-jdk-alpine

ADD https://github.com/burst-team/burstcoin/releases/download/1.2.8/burstcoin-1.2.8.zip /app/burstcoin/

COPY docker /app/burstcoin/docker

WORKDIR /app/burstcoin

RUN apk add --no-cache --no-progress unzip \
 && unzip burstcoin-1.2.8.zip \
 && ./docker/finalize.ash \
 && apk del --no-progress unzip

VOLUME ["/data"]

EXPOSE 8123 8125

ENTRYPOINT ["/app/burstcoin/docker/start.ash"]

