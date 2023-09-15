# Redis Encryption Demo

This repository contains a Docker setup for Redis and Nginx. It features two main functionalities:

1. **Nginx as a Proxy for Redis**: Nginx is configured to act as a proxy for Redis, forwarding requests from clients to the Redis server.

2. **End-to-End Encryption for Redis**: This setup enables TLS encryption for all data in transit between clients and the Redis server, ensuring that sensitive data is protected.

The setup includes Docker Compose configurations for both standard and end-to-end testing environments, necessary scripts, and configuration files.

## Prerequisites

Before you start, you need to prepare the following:

- A public key certificate (for example, `fake.crt`)
- A private key (for example, `fake.key`)
- A CA certificate (for example, `ca.crt`)

These files are necessary for the TLS encryption between the client and the Redis server. They should be placed in the `certs` directory.

## Usage

For the Nginx Proxy setup:
- Run `docker-compose up -d` to start the services in detached mode.
- Access the Redis service through Nginx on port 6380.

For the End-to-End TLS setup:
- Run `docker-compose -f docker-compose.e2e.yaml up -d` to start the services in detached mode.
- Access the Redis service directly on port 6380.

Here are some example commands to interact with the Redis server:

```bash
# Connect to Redis through Nginx
redis-cli -h localhost -p 6380

# Connect to Redis with TLS
redis-cli --tls -h localhost -p 6380
```
