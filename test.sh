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
       --volume /var/run/docker.sock:/var/run/docker.sock \
       --volume $(which docker):/bin/docker \
       --volume /usr/lib/x86_64-linux-gnu/libapparmor.so.1.1.0:/lib/x86_64-linux-gnu/libapparmor.so.1 \
       kurron/docker-jetbrains-base:latest /bin/bash"

echo $CMD
$CMD
