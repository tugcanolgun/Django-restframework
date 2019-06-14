FROM python:3.7-alpine
MAINTAINER Tugcan Olgun

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir -p /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
