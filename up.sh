#!/usr/bin/env bash

CONTAINER=vault

docker stop $CONTAINER || true && docker rm $CONTAINER || true

docker run \
	--cap-add=IPC_LOCK \
	-p 8200:8200 \
	--cap-add=IPC_LOCK \
	--name=$CONTAINER \
	-e 'VAULT_DEV_ROOT_TOKEN_ID=token' \
	-e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200' \
	-d \
	vault
