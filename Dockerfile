# Use an official Nginx runtime as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm -v /etc/nginx/conf.d/default.conf

# Copy your index.html file to the default Nginx document root directory
COPY index.html /usr/share/nginx/html/index.html

# Create a custom nginx.conf file
COPY nginx.conf /etc/nginx/nginx.conf 

# Expose port 80 to listen for incoming HTTP requests
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
