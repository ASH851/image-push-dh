FROM nginx:alpine

# Copy your index.html into the nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Ensure Nginx listens on port 8080 (required by Cloud Run)
ENV PORT 8080

# Expose the port (this can be omitted, as Cloud Run will use the PORT environment variable)
EXPOSE 8080

# Override the default nginx configuration to listen on the correct port
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf
