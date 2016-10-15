FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . /HL_Backend
WORKDIR  /HL_Backend

RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["HL_Backend.py"]
