# Use Debian-based image instead of Alpine (so we can use apt-get)
FROM n8nio/n8n:1.67.1-debian

# Install tini
USER root
RUN apt-get update && apt-get install -y tini && apt-get clean

# Switch back to the n8n user
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n using tini
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
