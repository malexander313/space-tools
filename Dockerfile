FROM python:3.11-buster

LABEL description="Remote Container Test"
Label version="1.0"

COPY requirements.txt ./

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH "/"
WORKDIR .
