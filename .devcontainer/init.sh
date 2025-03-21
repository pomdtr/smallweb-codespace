#!/bin/bash

mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519 && chmod 600 ~/.ssh/id_ed25519
cp .devcontainer/ssh_config ~/.ssh/config && chmod 644 ~/.ssh/config
