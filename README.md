# Vault Docker Sandbox Playground

This repo contains my notes and a complete playground environment to mess around with Hashicorp Vault.

To use the CLI export the following environment variables. If the Vault container is hosted on a remote host set this to a remote IP address.

```
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_TOKEN=token
```

or run:

```
source export-env
```

# Basic Secret Management

## Enabling a secret engine

```
vault secrets enable -path=secret/ kv
```

## Write a secret to the KV store

```bash
vault kv put [storepath]/[keyname] key=value
```

```bash
vault kv put secret/dky mypass=abc1234
```

## Retrieve the secret above

```bash
vault kv get [storepath]/[keyname]
```

```bash
vault kv get secret/dky
```

## Updating the secret?

Run the write/put command above again.

## Delete a secret

```bash
vault kv delete [storepath/keyname]
```

## Differences between version 1 and 2 of k/v

1. Version 1 has no versioning where as version 2 has a history of 10.
