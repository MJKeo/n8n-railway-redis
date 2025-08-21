# Use the official n8n image
FROM docker.n8n.io/n8nio/n8n:latest

# Install redis-cli and TLS certs
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends redis-tools ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# Run n8n as the node user again
USER node
