FROM ubuntu:22.04

RUN apt update && apt upgrade -y
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY entrypoint.sh .

ENTRYPOINT ["/app/entrypoint.sh"]
