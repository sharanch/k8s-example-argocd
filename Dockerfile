# Use the lightweight Nginx Alpine image
FROM docker.io/library/nginx:alpine

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to the Nginx server directory
# (Assuming your files are in a folder named 'public' or the current directory)
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]