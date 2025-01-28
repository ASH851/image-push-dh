FROM nginx:alpine

# Copy your index.html into the nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Set the container to listen on Cloud Run's dynamic port
ENV PORT 8080

# Expose the port for Cloud Run (you can omit this if you use ENV PORT)
EXPOSE 8080
