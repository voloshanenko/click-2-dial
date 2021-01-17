FROM nginx:alpine

EXPOSE 80

COPY release /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
