FROM python:3.9.2-slim-buster
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git aria2 wget curl busybox  python3 ffmpeg python3-pip
COPY . .
RUN pip3 install -r requirements.txt
CMD ["bash","start.sh"]
