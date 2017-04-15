# Burstcoin-Docker

*Ship your burstcoin wallet with Docker*

## Build

```sh
# Build the Docker image
$ docker build -t burstcoin-docker

# Create local directory for persistent conf and db.
$ mkdir -p /var/burstcoin

# Use `docker run` for the first time.
$ docker run -it --name=burstcoin -p 8123:8123 -p 8125:8125 -v /var/burstcoin:/data burstcoin-docker

# Use `docker start` if you have stopped it.
$ docker start burstcoin
```

## Links

https://github.com/burst-team/burstcoin *Burstcoin Core Development on GitHub*

https://docs.docker.com/engine/admin/host_integration *Start containers automatically*

https://hub.docker.com/r/_/openjdk/ *openjdk image on Docker Hub*
