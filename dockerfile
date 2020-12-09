FROM nginx:latest
RUN sed -i 's/filou95/httpd-esgi/g' /usr/share/nginx/html/index.html
EXPOSE 80
