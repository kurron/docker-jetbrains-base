# Overview
This project is a simple Docker base image that contains enough bits to run the JVM-based 
IDEs that [JetBrains](http://www.jetbrains.com/) create.

# Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

# Building
Type `docker-compose build` to build the image.

# Installation
Docker will automatically install the newly built image into the cache.

# Tips and Tricks

## Launching The Image

`docker-compose up` will launch the image, but it won't really do much.  You can `docker exec` into it and look 
around thouth.

# Troubleshooting

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

# List of Changes

