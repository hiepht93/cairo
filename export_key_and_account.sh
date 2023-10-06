#!/bin/bash

# Set default values
STARKNET_ACCOUNT_DEFAULT="./starkli-wallets/deployer/account.json"
STARKNET_KEYSTORE_DEFAULT="./starkli-wallets/deployer/keystore.json"

# Check if parameters are provided and update variables if needed
if [ $# -ge 1 ]; then
    STARKNET_ACCOUNT=$1
else
    STARKNET_ACCOUNT=$STARKNET_ACCOUNT_DEFAULT
fi

if [ $# -ge 2 ]; then
    STARKNET_KEYSTORE=$2
else
    STARKNET_KEYSTORE=$STARKNET_KEYSTORE_DEFAULT
fi

# Export the variables
export STARKNET_ACCOUNT=$STARKNET_ACCOUNT
export STARKNET_KEYSTORE=$STARKNET_KEYSTORE