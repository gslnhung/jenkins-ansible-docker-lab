FROM alpine:3.19

# Install Nginx
RUN apk add --no-cache nginx

# Copy Nginx default configuration
COPY default.conf /etc/nginx/http.d/default.conf

# Copy HTML file to Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

