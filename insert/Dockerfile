FROM python:3

RUN apt-get update -y
RUN apt-get install wait-for-it -y

COPY /insert/start.sh start.sh


ENTRYPOINT [ "bash", "/start.sh" ]