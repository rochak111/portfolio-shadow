# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the web application files to the Nginx document root directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80