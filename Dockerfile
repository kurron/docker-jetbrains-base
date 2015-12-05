FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

# Install the libraries needed to run a JVM in GUI mode
RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev git subversion mercurial && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

# Create a user and group that matches what is in most Vagrant boxes
RUN groupadd --gid 1000 developer && \
    useradd --gid 1000 --uid 1000 --create-home --shell /bin/bash developer && \
    chown -R developer:developer /home/developer

# Set the environment to use the new user account
USER developer:developer
ENV HOME /home/developer
WORKDIR /home/developer

# the user of this image is expected to mount his actual home directory to this one
VOLUME ["/home/developer"]

