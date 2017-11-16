#!/bin/bash
set -e

docker build -f Dockerfile5 -t registry.ott-consult.de/oc/kibana:5 .
docker push registry.ott-consult.de/oc/kibana:5
docker build -f Dockerfile6 -t registry.ott-consult.de/oc/kibana:6 .
docker push registry.ott-consult.de/oc/kibana:6
docker tag registry.ott-consult.de/oc/kibana:6 registry.ott-consult.de/oc/kibana:latest
docker push registry.ott-consult.de/oc/kibana:6
docker push registry.ott-consult.de/oc/kibana:latest

