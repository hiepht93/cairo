#!/bin/bash

export STARKNET_ACCOUNT="./starkli-wallets/deployer/mainnet_account.json"
export STARKNET_KEYSTORE="./starkli-wallets/deployer/mainnet_keystore.json"
starkli deploy 0x06331bbc50c598221b727ca49665ac5b2301aa6568bc85db7d79cfa39f108125 0x0633bB1F2627790541183d1Fd770bDdad48ae2772Dab6Fa98488D9e22524dba9 6982082712004663757606083379529 1481851209 18 84000000000000000000000000000000000 0 --network mainnet

# 379067928035501022078318 is the hex of PEPE Token.
# 1346719813 is the hex of PEPE.
# 18 is the decimal value.
# 1000000000000000 is the amount to be minted.
# 0 is the salt value.