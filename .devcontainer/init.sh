#!/bin/bash

mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519 && chmod 600 ~/.ssh/id_ed25519

cat <<EOF > ~/.ssh/config && chmod 644 ~/.ssh/config
Host vps
    HostName 162.55.213.87
    Port 2222
    User pomdtr
    LogLevel ERROR
    StrictHostKeyChecking no
EOF
