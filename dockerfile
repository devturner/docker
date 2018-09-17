FROM python:3.6-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1


# define what content and where your app will line in this container

RUN mkdir /src
WORKDIR /src

COPY . /src/

RUN pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --deploy --system --skip-lock --dev
