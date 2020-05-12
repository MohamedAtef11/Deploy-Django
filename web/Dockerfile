FROM python:3.7-slim

EXPOSE 8000

COPY . /django_ec2

WORKDIR /django_ec2

RUN python -m pip install --upgrade pip

# COPY requirements.txt requirements.txt

RUN python -m pip install -r requirments.txt

RUN python crowdFunding/manage.py makemigrations

RUN python crowdFunding/manage.py migrate




