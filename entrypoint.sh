#!/bin/sh

set -e

redis-server --tls-port 6380 --loglevel notice --port 0 \
    --tls-cert-file /app/certs/fake.crt \
    --tls-key-file /app/certs/fake.key \
    --tls-ca-cert-file /app/certs/ca.crt
