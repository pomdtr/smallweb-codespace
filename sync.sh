#!/bin/sh

if [ -z "$SSH_REMOTE_HOSTNAME" ]; then
  echo "SSH_REMOTE_HOSTNAME is not set" > /dev/stderr
  exit 1
fi

if [ -z "$SSH_REMOTE_PORT" ]; then
  echo "SSH_REMOTE_PORT is not set" > /dev/stderr
  exit 1
fi

if [ -z "$SSH_REMOTE_USER" ]; then
  echo "SSH_REMOTE_USER is not set" > /dev/stderr
  exit 1
fi

if [ -z "$SSH_REMOTE_PATH" ]; then
  echo "SSH_REMOTE_PATH is not set" > /dev/stderr
  exit 1
fi

SSH_REMOTE=$SSH_REMOTE_USER@$SSH_REMOTE_HOSTNAME:$SSH_REMOTE_PORT
mutagen sync create \
    --name=smallweb \
    --ignore=node_modules \
    --ignore-vcs \
    --mode=two-way-resolved \
    $SSH_REMOTE:$SSH_REMOTE_PATH ./smallweb
