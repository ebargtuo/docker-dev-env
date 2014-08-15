#!/bin/sh
container="$1"
: ${container:="docker-dev-env"}
ssh vagrant@`docker inspect -f '{{ .NetworkSettings.IPAddress }}' "$container"`

