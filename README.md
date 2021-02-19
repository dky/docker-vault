# Vault Playground

This my notes on playing with Vault in a Sandbox environment.

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

vault kv get [storepath]/[keyname]

```bash
vault kv get secret/dky
```

## Updating the secret?

Run the write/put command above again.

## Delete a secret

vault kv delete [storepaty/keyname]


