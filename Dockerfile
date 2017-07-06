FROM python:latest

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
RUN mkdir /code/db
WORKDIR /code
ADD ./mysite/requirements.txt /code/
RUN pip3 install -r requirements.txt
ADD . /code/