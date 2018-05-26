#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh
add_repos elasticsearch${KIBANA_VERSION:0:1}
create_user_and_group
install_software iproute kibana-${KIBANA_VERSION}

cleanup
