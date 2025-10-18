 # Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=1234
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

EXPOSE 5678

CMD ["n8n", "start"]
