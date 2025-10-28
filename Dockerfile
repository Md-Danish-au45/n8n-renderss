# ✅ Use official n8n image directly
FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=12345678
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://verify-n8n.onrender.com/
ENV N8N_EDITOR_BASE_URL=https://verify-n8n.onrender.com/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
