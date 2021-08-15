#!/bin/sh

docker build --network host -t mihokookayami/isso:latest -f Dockerfile .
docker push mihokookayami/isso:latest
