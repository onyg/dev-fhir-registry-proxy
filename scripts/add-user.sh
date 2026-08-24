#!/bin/bash

docker run --rm -it \
  -v dev-fhir-registry-proxy_verdaccio-storage:/data \
  httpd:2.4-alpine \
  htpasswd -B /data/htpasswd "$1"
