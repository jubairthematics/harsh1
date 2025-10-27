FROM nginx:latest

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy your site
COPY . /usr/share/nginx/html

# Expose port 80 inside container
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
