#!/bin/sh

# Get swap size
SWAP_SIZE=${SWAP_SIZE:-512M}

# If $SWAP is 1, set up swap space
if [ "$SWAP" = "1" ]; then
  echo "Setting up swap space..."
  fallocate -l ${SWAP_SIZE} /swapfile
  chmod 0600 /swapfile
  mkswap /swapfile
  echo 10 > /proc/sys/vm/swappiness
  swapon /swapfile
  echo 1 > /proc/sys/vm/overcommit_memory
fi

if [ "$#" -gt 0 ]; then
  # Got started with arguments
  tini -s -- n8n "$@"
else
  # Got started without arguments
  tini -s -- n8n
fi
