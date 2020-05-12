FROM python:3.7-slim

USER root
RUN python -m pip install --upgrade pip

WORKDIR django_ec2

COPY . .


# COPY requirements.txt requirements.txt

RUN pip install -r requirments.txt

RUN python manage.py makemigrations

RUN python manage.py migrate

RUN python manage.py collectstatic


EXPOSE 8000

