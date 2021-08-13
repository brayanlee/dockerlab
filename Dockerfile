FROM ubuntu:latest

ENV NGINX_HOM /usr/share/nginx/html

RUN apt-get update && apt-get install -y -q nginx

COPY ./index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
