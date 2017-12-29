FROM openjdk:8-jdk-alpine

RUN mkdir -p /app/burstcoin/

WORKDIR /app/burstcoin

COPY docker /app/burstcoin/docker

RUN apk add --no-cache --no-progress unzip \
 && /docker/finalize.ash

ADD https://github.com/PoC-Consortium/burstcoin/releases/download/1.3.6cg/burstcoin-1.3.6cg.zip  /app/burstcoin/

RUN unzip burstcoin-1.3.6cg.zip \
 && apk del --no-progress unzip

VOLUME ["/data"]

COPY nxt-default.properties /app/burstcoin/conf/

EXPOSE 8123 8125
ENTRYPOINT ["/app/burstcoin/docker/start.ash"]
