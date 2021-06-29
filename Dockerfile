FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install -y python3-pip python-dev build-essential

ADD . /Altair

WORKDIR /Altair

RUN pip install -r requirements.txt

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "app:app"]
