# Use a Linux-based web server image
FROM nginx:alpine

# Remove default website
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the container
COPY . /usr/share/nginx/html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
