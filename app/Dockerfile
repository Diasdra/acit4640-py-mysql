FROM python:3

RUN apt-get update -y
RUN apt-get install wait-for-it -y
RUN mkdir /app 

WORKDIR /app

RUN wget -qq https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip -O /tmp/source.zip
RUN unzip /tmp/source.zip
RUN cp -r acit4640-py-mysql-master/backend /app/src
RUN rm -rf acit4640-py-mysql-master

RUN python3 -m pip install -r /app/src/requirements.txt

WORKDIR /app/src

COPY /app/create_backend.sh /app/src/create_backend.sh

EXPOSE 8000

CMD [ "bash", "/app/src/create_backend.sh" ]