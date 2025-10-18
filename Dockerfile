FROM n8nio/n8n:latest
EXPOSE 5678
CMD ["tini", "--", "n8n", "start"]
