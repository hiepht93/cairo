#!/bin/bash

# Function to display help
display_help() {
    echo "Usage: $0 [filename] [output_account_name] [output_keystore_name] [network]"
     echo "  filename (require): The filename for the StarkNet target"
    echo "  output_account_name (optional): Account file name. Default is 'account.json'."
    echo "  output_keystore_name (optional): Keystore file name. Default is 'keystore.json'."
    echo "  network (optional): The StarkNet network (mainnet|goerli-1|goerli-2). Default is 'goerli-1'."
}

# Check if --help is passed
if [[ "$1" == "--help" ]]; then
    display_help
    exit 0
fi
# Set default values
filename=""
network="goerli-1"
output="./starkli-wallets/deployer"
output_account_name="account.json"
output_keystore_name="keystore.json"

# Check if parameters are provided and update variables if needed
if [ $# -ge 1 ]; then
    if [ -n "$1" ]; then
        filename="$1"
    else
        echo "Error: Filename cannot be an empty string."
        exit 1
    fi
fi
# Check if filename is provided
if [ -z "$filename" ]; then
    echo "Error: Filename not provided."
    exit 1
fi

if [ $# -ge 2 ]; then
    output_keystore_name=$2
fi

if [ $# -ge 3 ]; then
    output_account_name=$3
fi


if [ $# -ge 4 ]; then
    network=$4
fi

# Export the variables
export STARKNET_ACCOUNT="$output/$output_account_name"
export STARKNET_KEYSTORE="$output/$output_keystore_name"

starkli declare target/dev/"$filename" --compiler-version=2.1.0 --network="$network"
