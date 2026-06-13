# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy all static assets from the root directory to the Nginx public HTML directory
COPY . /usr/share/nginx/html/

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
