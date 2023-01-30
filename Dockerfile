
FROM python:3.7.7-slim

WORKDIR /usr/src/app

COPY docker2.py ./

RUN apt-get update
RUN apt-get install -y --no-install-recommends git



EXPOSE 9080:9080

ENTRYPOINT python3 docker2.py 
