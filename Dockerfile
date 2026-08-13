FROM nginx:latest

COPY index.html /usr/local/apache2/htdocs2/

EXPOSE 80
