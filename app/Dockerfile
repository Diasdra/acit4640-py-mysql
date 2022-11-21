FROM python:3

RUN apt-get update -y
RUN apt-get install wait-for-it -y
RUN mkdir /app 

WORKDIR /app

COPY /backend /app/src

RUN python3 -m pip install -r /app/src/requirements.txt

WORKDIR /app/src

COPY create_backend.sh /app/src/create_backend.sh

EXPOSE 8000

CMD [ "bash", "/app/src/create_backend.sh" ]