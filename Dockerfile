FROM python:3.8.2-buster

WORKDIR /usr/src/app

COPY requirements.txt ./requirements.txt

RUN apt-get update
RUN apt-get install -y cmake
RUN pip3 install --no-cache-dir -r requirements.txt