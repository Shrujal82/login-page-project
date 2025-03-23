# Use an official Nginx image as a base
FROM nginx:alpine

# Copy the static HTML file into the Nginx default directory
COPY ./src/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
