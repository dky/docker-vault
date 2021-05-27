#!/bin/bash
#Exports the VAULT_ADDR for testing + the Root token
#Usage: source export.sh TOKEN_FROM_LOGS

ROOT_TOKEN="${VARIABLE:=token}"

export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_DEV_ROOT_TOKEN_ID="$ROOT_TOKEN"
