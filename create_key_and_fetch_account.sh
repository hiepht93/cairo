#!/bin/bash

# Function to display help
display_help() {
    echo "Usage: $0 [address] [output_account_name] [output_keystore_name] [network]"
    echo "  address (optional): Wallet address. Default is '0x0633bB1F2627790541183d1Fd770bDdad48ae2772Dab6Fa98488D9e22524dba9'."
    echo "  output_account_name (optional): Account file name. Default is 'account.json'."
    echo "  output_keystore_name (optional): Keystore file name. Default is 'keystore.json'."
    echo "  network (optional): The StarkNet network. Default is 'goerli-1'."
}

# Check if --help is passed
if [[ "$1" == "--help" ]]; then
    display_help
    exit 0
fi

# Set default values
address="0x0633bB1F2627790541183d1Fd770bDdad48ae2772Dab6Fa98488D9e22524dba9"
output="./starkli-wallets/deployer"
output_account_name="account.json"
output_keystore_name="keystore.json"
network="goerli-1"

# Check if the directory exists, if not, create it
if [ ! -d "$output" ]; then
  mkdir -p "$output"
fi

# Check if parameters are provided and update variables if needed
if [ $# -ge 1 ]; then
    address="$1"
fi

if [ $# -ge 2 ]; then
    output_keystore_name="$2"
fi

if [ $# -ge 3 ]; then
    output_account_name="$3"
fi

if [ $# -ge 4 ]; then
    network="$4"
fi

# Run the command
starkli account fetch "$address" --output "$output/$output_account_name" --network "$network"
starkli signer keystore from-key "$output/$output_keystore_name"
