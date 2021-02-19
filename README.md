# Vault Docker Sandbox Playground

This repo contains my notes and a complete playground environment to mess around with Hashicorp Vault.

```
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_TOKEN=token
```

# Basic Secret Management

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
vault kv delete [storepaty/keyname]
```
