FROM python:2.7

WORKDIR /app

COPY services.py /app/
COPY setup.py /app/

RUN ["pip", "install", "-U", "-e", "."]

ENTRYPOINT ["awsesd"]
