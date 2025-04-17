#!/bin/bash

# Airdrop script for Mesecoin
# Requires SPL Token CLI tools

addresses=(
  "WalletAddress1"
  "WalletAddress2"
  "WalletAddress3"
)

token_mint="8srRUfYmFC3GCf9EDCrwpDP1Dv2J8jf6b1q63q7kpump"
amount=1000000000 # 1000 MESE with 6 decimals

for addr in "${addresses[@]}"; do
  echo "Airdropping 100 MESE to $addr..."
  spl-token transfer "$token_mint" "$amount" "$addr" --fund-recipient --allow-unfunded-recipient
done
