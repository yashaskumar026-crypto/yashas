FROM nginx:latest

COPY index.html /usr/local/nginx/html/index.html

EXPOSE 80
