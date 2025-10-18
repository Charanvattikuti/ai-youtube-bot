FROM n8nio/n8n:latest

# Install tini (process manager)
USER root
RUN apk add --no-cache tini

# Switch back to n8n user
USER node

# Expose port
EXPOSE 5678

# Start n8n using tini
CMD ["tini", "--", "n8n", "start"]
