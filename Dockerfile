FROM docker.io/library/nginx:alpine

RUN rm -rf /usr/share/nginx/html/*


COPY . /usr/share/nginx/html


EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]