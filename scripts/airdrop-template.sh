#!/bin/bash

# Airdrop script for Mesecoin
# Requires SPL Token CLI tools

addresses=(
  "WalletAddress1"
  "WalletAddress2"
  "WalletAddress3"
)

token_mint="CMtGP3edzwQ3rZFbQnZDimjQZDXGNkBBLbH3NEDDa8wF"
amount=100000000 # 100 MESE with 9 decimals

for addr in "${addresses[@]}"; do
  echo "Airdropping 100 MESE to $addr..."
  spl-token transfer "$token_mint" "$amount" "$addr" --fund-recipient --allow-unfunded-recipient
done
