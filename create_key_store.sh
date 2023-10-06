#!/bin/bash

# Set default values
output="./starkli-wallets/deployer/keystore.json"

# Check if parameters are provided and update variables if needed
if [ $# -ge 1 ]; then
    output=$1
fi
starkli signer keystore from-key $output