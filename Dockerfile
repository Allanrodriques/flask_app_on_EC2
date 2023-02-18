FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install flask
RUN pip3 install flask-restful

WORKDIR /web
COPY . . 

EXPOSE 5000


CMD ["python3","web.py"]