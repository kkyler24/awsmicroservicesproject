!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build image and add a descriptive tag
docker build --force-rm --no-cache --rm -t machinelearning-micro-srv .
 
# List docker images
docker images

# Run flask app
docker run -p 8000:80 machinelearning-micro-srv
