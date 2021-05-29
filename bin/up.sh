#!/usr/bin/env bash
# Use the docker-compose-dev.yml file instead of this one directory up.

CONTAINER=vault

docker stop $CONTAINER || true && docker rm $CONTAINER || true

docker run \
	--restart=always \
	--cap-add=IPC_LOCK \
	--name=$CONTAINER \
	-e 'VAULT_DEV_ROOT_TOKEN_ID=token' \
	-e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200' \
	-e 'VAULT_LOCAL_CONFIG={"backend": {"file": {"path": "/vault/file"}}, "default_lease_ttl": "168h", "max_lease_ttl": "720h"}' \
	-p 8200:8200 \
	-d \
	vault
