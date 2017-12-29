FROM openjdk:8-jdk-alpine

ADD https://github.com/PoC-Consortium/burstcoin/releases/download/1.3.6cg/burstcoin-1.3.6cg.zip  /app/burstcoin/

COPY docker /app/burstcoin/docker

WORKDIR /app/burstcoin

RUN apk add --no-cache --no-progress unzip \
 && unzip burstcoin-1.3.6cg.zip \
 && ./docker/finalize.ash \
 && apk del --no-progress unzip

COPY brs.properties /app/burstcoin/conf/

VOLUME ["/data"]
EXPOSE 8123 8125
ENTRYPOINT ["/app/burstcoin/docker/start.ash"]
