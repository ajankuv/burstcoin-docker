FROM openjdk:8-jdk-alpine

ADD https://github.com/PoC-Consortium/burstcoin/releases/download/2.0.0/burstcoin-2.0.0.zip  /app/burstcoin/

COPY docker /app/burstcoin/docker

WORKDIR /app/burstcoin

RUN apk add --no-cache --no-progress unzip \
 && unzip burstcoin-2.0.0.zip \
 && mv /app/burstcoin/burst_db /data/ \
 && ./docker/finalize.ash \
 && apk del --no-progress unzip

VOLUME ["/data"]

COPY brs-default.properties /app/burstcoin/conf/

EXPOSE 8123 8125
ENTRYPOINT ["/app/burstcoin/docker/start.ash"]
