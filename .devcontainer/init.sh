#!/bin/bash

if [ -z "$SSH_PRIVATE_KEY" ]; then
  echo "SSH_PRIVATE_KEY is not set" > /dev/stderr
  exit 1
fi

if [ -z "$SSH_REMOTE_HOST" ]; then
  echo "SSH_REMOTE_HOST is not set" > /dev/stderr
  exit 1
fi

mkdir -p ~/.ssh
ssh-keyscan "$SSH_REMOTE_HOST" >> ~/.ssh/known_hosts
echo -n "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519 && chmod 600 ~/.ssh/id_ed25519
