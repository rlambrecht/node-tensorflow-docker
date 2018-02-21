# node-tensorflow-docker

Node.JS API serving a tensorflow image classifier with Docker.

# Requirements

Docker

~2GB of disk space

# Usage

## Build the docker image

$ docker build -t <name-of-your-image> .

## Run the image

$ docker run -p 49160:8080 -d <name-of-your-image>

## Verify it's working

Go to http://localhost:49160 and you should see "Hello World!"
