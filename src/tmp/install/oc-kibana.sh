#!/bin/bash
set -e
set -x

curl -sSo /tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source /tmp/install/functions.sh
add_repos elasticsearch${KIBANA_VERSION:0:1}
create_user_and_group
install_software kibana-${KIBANA_VERSION}

cleanup
