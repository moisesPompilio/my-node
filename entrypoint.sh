#!/bin/bash
set -e

# # Create an alias for bitcoin-cli with the provided RPC credentials
# alias bitcoin-cli="bitcoin-cli -rpcuser=$RPC_USER -rpcpassword=$RPC_PASSWORD"

# # Start bitcoind with the provided arguments
exec bitcoind