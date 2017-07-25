# Burstcoin-Docker

*Ship your burstcoin wallet with Docker*

## Info
Build a Docker image from openjdk:8-jdk-alpine and run ~burst-team/burstcoin release 1.2.8~ updated with dawallet/burstcoin release 1.2.9c.

## Build

```sh
# Build the Docker image.
$ docker build -t burstcoin-docker .

# Create local directory for persistent conf and db.
$ mkdir -p /var/burstcoin

# Use `docker run` for the first time.
$ docker run -it --name=burstcoin -p 8123:8123 -p 8125:8125 -v /var/burstcoin:/data burstcoin-docker

# Use `docker start` if you have stopped it.
$ docker start burstcoin
```

## Links

https://github.com/burst-team/burstcoin *Burstcoin Core Development on GitHub*

https://github.com/dawallet/burstcoin *Faster updates on wallets for fork issues*

https://docs.docker.com/engine/admin/host_integration *Start containers automatically*

https://hub.docker.com/r/_/openjdk/ *openjdk image on Docker Hub*
