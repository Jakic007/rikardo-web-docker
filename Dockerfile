FROM ubuntu:20.04

RUN apt update && apt install -y python3

ENTRYPOINT ["python3", "-m", "http.server", "9001"]