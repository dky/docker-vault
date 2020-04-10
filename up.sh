#!/bin/bash

CONTAINER=dev-vault

docker stop $CONTAINER || true && docker rm $CONTAINER || true

docker run \
	-d \
	-p 8200:8200 \
	--cap-add=IPC_LOCK \
	--name=$CONTAINER \
	vault
