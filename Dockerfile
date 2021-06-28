FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install -y python3-pip python-dev build-essential

ADD . /Altair

WORKDIR /

RUN pip install -r Altair/requirements.txt

ENTRYPOINT ["gunicorn"]

CMD ["Altair:app"]
