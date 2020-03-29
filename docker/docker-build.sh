#!/bin/sh

./gradlew clean build

docker build -f docker/Dockerfile --no-cache -t micronaut-graalvm-poc .
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 micronaut-graalvm-poc"
