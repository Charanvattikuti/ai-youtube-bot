# ✅ Use the correct official n8n image
FROM n8nio/n8n:latest

# Render sets the port automatically — use its environment variable
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=1234
ENV WEBHOOK_URL=https://n8n-ai-bot.onrender.com/
ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_PORT=$PORT

# Expose Render's port
EXPOSE $PORT

# Start n8n normally
CMD ["n8n"]
