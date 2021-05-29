#/usr/bin/env bash
# Writes whatever is in `secrets.json` into a v1 store.

curl --header "X-Vault-Token: $VAULT_TOKEN" \
	--request POST \
	--data @secrets.json \
	$VAULT_ADDR/v1/secret/data/ihub/dev

