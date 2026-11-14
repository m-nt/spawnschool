FROM nginx:1.28-alpine

# Remove default configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static website
COPY html/ /usr/share/nginx/html/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
