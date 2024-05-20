# Start with the official Redis image from the Docker Hub
FROM redis:latest

# Set the environment variable for the password
ARG REDIS_PASSWORD

# Expose the default Redis port
EXPOSE 6379

# Start Redis with the specified password
CMD ["redis-server", "--requirepass", "${REDIS_PASSWORD}"]
