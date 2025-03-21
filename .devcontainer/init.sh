#!/bin/bash

echo "$SSH_PRIVATE_KEY" > /vscode/.ssh/id_ed25519
chmod 600 /vscode/.ssh/id_ed25519
