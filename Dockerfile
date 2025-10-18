# Use the official n8n image directly
FROM docker.n8n.io/n8nio/n8n:latest

# Tell Render which port to use
ENV N8N_PORT=10000
ENV WEBHOOK_URL=https://n8n-ai-bot.onrender.com/

# Optional login credentials
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=1234

EXPOSE 10000

CMD ["n8n"]
