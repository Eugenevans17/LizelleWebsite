# Use official Nginx image as base
FROM nginx:alpine

# Copy the HTML file to Nginx default serving directory
COPY index.html /usr/share/nginx/html/

# Copy the CSS file to Nginx default serving directory
COPY styles.css /usr/share/nginx/html/

# Copy any images to Nginx serving directory
COPY *.jpg /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.jpeg /usr/share/nginx/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
