FROM nginx

COPY frontend/index.html /usr/share/nginx/html

RUN mkdir /etc/nginx/templates
COPY frontend/default.conf.template /etc/nginx/templates

EXPOSE 8080