# Use the official n8n image
FROM n8nio/n8n:latest

# Install redis-cli and TLS certs
USER root
RUN apk add --no-cache redis ca-certificates

# Run n8n as the node user again
USER node
