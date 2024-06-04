# Don't Remove Credit @VJ_Botz
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install gi
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /KTG-FILTER-BOT
WORKDIR /KTG-FILTER-BOT
COPY . /KTG-FILTER-BOT
CMD ["python", "bot.py"]
