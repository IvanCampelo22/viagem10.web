# syntax=docker/dockerfile:1

FROM python:3.8.2-slim-buster

WORKDIR usr/app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 3000

CMD ["python3", "./viagem10_webserver/manage.py", "runserver", "0.0.0.0:3000"]
