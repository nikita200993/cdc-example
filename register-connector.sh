#!/usr/bin/env bash

set -e

script_dir=$(dirname $0)
curl -i -H "Accept:application/json" -H "Content-Type:application/json" $1/connectors \
-d @${script_dir}/register-postgres-connector.json