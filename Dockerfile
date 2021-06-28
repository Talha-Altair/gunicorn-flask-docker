FROM ubuntu:latest

RUN apt-get update -y

RUN apt-get install -y python3-pip python-dev build-essential

ADD . /Altair

WORKDIR /Altair

RUN pip install -r Altair/requirements.txt

ENTRYPOINT ["gunicorn"]

CMD ["Altair:app"]