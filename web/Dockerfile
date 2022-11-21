FROM nginx

# RUN apt-get update -y
# RUN apt-get install wget -y
# RUN apt-get install unzip -y

# WORKDIR /app

# RUN wget -qq https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip -O /tmp/source.zip
# RUN unzip /tmp/source.zip
# RUN cp -r acit4640-py-mysql-master/frontend /app/src
# RUN rm -rf acit4640-py-mysql-master

# WORKDIR /app/src

# RUN ls

COPY web/index.html /usr/share/nginx/html

RUN mkdir /etc/nginx/templates
COPY /web/default.conf.template /etc/nginx/templates

EXPOSE 8080