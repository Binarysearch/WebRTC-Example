#!/bin/bash


docker build --rm -f Dockerfile -t docker-private.genetius.es/webrtcexample:latest . &&
(docker container rm docker-private.genetius.es/webrtcexample -f || true) &&
docker run --rm -d  -p 8443:8443/tcp docker-private.genetius.es/webrtcexample:latest
#docker push docker-private.genetius.es/webrtcexample:latest