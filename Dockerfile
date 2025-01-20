# nginx image, alpine - smaller that std variant & lightweight
FROM nginx:alpine

# copies index.html to the nginx directory
COPY index.html /usr/share/nginx/html/index.html

# expose ports 8080
EXPOSE 8080

# starts nginx
CMD ["nginx", "-g", "daemon off;"]
