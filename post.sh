#/usr/bin/env bash

cd $(dirname $0)

curl --header "X-Vault-Token: token" \
	--request POST \
	--data @secrets.json \
	http://localhost:8200/v1/test/data/ihub/dev

