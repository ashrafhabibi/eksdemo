FROM nginx:1.23.4

WORKDIR /usr/share/nginx/html
COPY src/index.html index.html