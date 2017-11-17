FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN apt-get update -yy && apt-get install -q -y pandoc
RUN mkdir /src
WORKDIR /src
COPY requirements.txt /src/
RUN pip install -r requirements.txt
