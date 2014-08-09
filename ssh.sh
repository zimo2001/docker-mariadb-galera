#!/bin/sh
SSH_PUBKEY_DIR=/root/ssh

if [ -d "$SSH_PUBKEY_DIR" ]; then
  # Control will enter here if $DIRECTORY exists.
  for pubkey in `ls *.pub`; do
    cat $pubkey >> /root/.ssh/authorized_keys
  done
fi
