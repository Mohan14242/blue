# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the HTML file into the container's default Nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow external access to the container
EXPOSE 80

# Start the Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
