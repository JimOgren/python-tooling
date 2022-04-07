# syntax=docker/dockerfile:1
FROM python:3.9-slim

RUN mkdir home/app
WORKDIR /home/app

COPY requirements.txt .
COPY src ./src
COPY setup.py .

RUN pip install -r requirements.txt
RUN pip install -e .