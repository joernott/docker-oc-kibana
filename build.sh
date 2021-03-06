#!/bin/bash
set -e
set -x
curl -sSo src/tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source src/tmp/install/functions.sh

patch_dockerfile Dockerfile5
docker build -f Dockerfile5 -t registry.ott-consult.de/oc/kibana:5 .
docker push registry.ott-consult.de/oc/kibana:5

patch_dockerfile Dockerfile6
docker build -f Dockerfile6 -t registry.ott-consult.de/oc/kibana:6 .
docker push registry.ott-consult.de/oc/kibana:6
docker tag registry.ott-consult.de/oc/kibana:6 registry.ott-consult.de/oc/kibana:latest
docker push registry.ott-consult.de/oc/kibana:6
docker push registry.ott-consult.de/oc/kibana:latest

patch_dockerfile Dockerfile7
docker build -f Dockerfile7 -t registry.ott-consult.de/oc/kibana:7 .
docker push registry.ott-consult.de/oc/kibana:7