FROM python:3.11.4-slim-bullseye
WORKDIR /app

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# install system dependencies
RUN apt-get update

# install dependencies
RUN pip install --upgrade pip
RUN pip install django whitenoise gunicorn

COPY . /app

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]