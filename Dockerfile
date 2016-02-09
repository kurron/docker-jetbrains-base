FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

# Install the libraries needed to run a JVM in GUI mode
RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev git subversion mercurial && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

# Add the user and group so you don't see those annoying messages when shelled inside the container
RUN groupadd --gid 1000 developer && \
    useradd --gid 1000 --uid 1000 --create-home --shell /bin/bash developer

VOLUME ["/home/vagrant"]

# We mount these so we can run the Docker client from inside the container
VOLUME ["/var/run/docker.sock"]
VOLUME ["/bin/docker"]
VOLUME ["/lib/x86_64-linux-gnu/libapparmor.so.1"]

ENV HOME /home/developer
