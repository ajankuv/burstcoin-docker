# Burstcoin-Docker

*Ship your burstcoin wallet with Docker*

## Info
Build a Docker image from openjdk:8-jdk-alpine and run PoC-Consortium/burstcoin release 2.0.2.

This will be kept up to date with the newest releases from PoC Consortium moving forward.

Use this to support Dymaxion updates from PoC.

NOTE: This uses the h2 db backend, no extra software needed.

*NOTE: If upgrading from older 1.3.6, you must remove the old h2 db and re-download for this new version.*

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

https://github.com/PoC-Consortium/burstcoin *Burstcoin Core Development from PoC on GitHub*

https://docs.docker.com/engine/admin/host_integration *Start containers automatically*

https://hub.docker.com/r/_/openjdk/ *openjdk image on Docker Hub*
