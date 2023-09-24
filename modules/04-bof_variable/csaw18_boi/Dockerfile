FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y socat

COPY boi .
COPY socket.sh .

USER root

ENTRYPOINT [ "/app/socket.sh" ]