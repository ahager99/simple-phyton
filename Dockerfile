FROM ubuntu:16.04

RUN yum update && yum install -y python pyhton-pip

RUN pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
