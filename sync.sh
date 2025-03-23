#!/bin/sh

if [ -z "$SSH_REMOTE_HOST" ]; then
  echo "SSH_REMOTE_HOST is not set"
  exit 1
fi

if [ -z "$SSH_REMOTE_PORT" ]; then
  echo "SSH_REMOTE_PORT is not set"
  exit 1
fi

if [ -z "$SSH_REMOTE_USERNAME" ]; then
  echo "SSH_REMOTE_USERNAME is not set"
  exit 1
fi

if [ -z "$SSH_REMOTE_PATH" ]; then
  echo "SSH_REMOTE_PATH is not set"
  exit 1
fi

SSH_REMOTE=$SSH_REMOTE_USERNAME@$SSH_REMOTE_HOST:$SSH_REMOTE_PORT
MUTAGEN_ALPHA=$SSH_REMOTE:$SSH_REMOTE_PATH

mutagen sync create \
    --name=smallweb \
    --ignore=node_modules \
    --ignore-vcs \
    --mode=two-way-resolved \
    $MUTAGEN_ALPHA ./smallweb
