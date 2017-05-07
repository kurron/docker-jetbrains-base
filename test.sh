#!/bin/bash

CMD="docker run \
       --rm \
       --interactive \
       --tty \
       --name jetbrains \
       --net "host" \
       --env DISPLAY=unix$DISPLAY \
       --user=$(id -u $(whoami)):$(id -g $(whoami)) \
       --volume /tmp/.X11-unix:/tmp/.X11-unix \
       --volume $HOME:/home \
       kurron/docker-jetbrains-base:latest /bin/bash"

echo $CMD
$CMD
