#!/bin/bash

if [ -z "$SSH_PRIVATE_KEY" ]; then
  echo "SSH_PRIVATE_KEY is not set" > /dev/stderr
  exit 1
fi

mkdir -p ~/.ssh
echo -n "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519 && chmod 600 ~/.ssh/id_ed25519
