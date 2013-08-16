#!/usr/bin/env bash

WORK_DIR=${1:-"."}

# Install Chef if it is not installed
#if [[ $(chef-solo -v) == *"Chef: 11."* ]]; then
#    echo "chef-solo is already installed"
#else
#    apt-get -y install curl
#    curl --silent -L https://www.opscode.com/chef/install.sh | sudo bash
#fi

# Run Chef
chef-solo --config $WORK_DIR"/chef.rb" --json-attributes $WORK_DIR"/chef.json"