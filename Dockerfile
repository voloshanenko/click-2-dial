FROM nginx:alpine

EXPOSE 80

COPY src /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
