# Use the official n8n image
FROM n8nio/n8n:latest

# Install redis-cli
USER root
RUN apk add --no-cache redis ca-certificates
# Install the redis client libs for the n8n Function node
RUN npm i -g redis @redis/json

# Run n8n as the node user again
USER node
