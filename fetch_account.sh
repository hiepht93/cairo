#!/bin/bash

# Set default values
address="0x0633bB1F2627790541183d1Fd770bDdad48ae2772Dab6Fa98488D9e22524dba9"
output="./starkli-wallets/deployer/account.json"
network="goerli-1"

# Check if parameters are provided and update variables if needed
if [ $# -ge 1 ]; then
    address=$1
fi

if [ $# -ge 2 ]; then
    output=$2
fi

if [ $# -ge 3 ]; then
    network=$3
fi

# Run the command
starkli account fetch $address --output $output --network $network
