FROM redis:latest

ENV REDIS_PASSWORD mooyaho

# Expose the default Redis port
EXPOSE 6379

# Start Redis with the specified password
CMD ["redis-server", "--requirepass", "${REDIS_PASSWORD}"]
