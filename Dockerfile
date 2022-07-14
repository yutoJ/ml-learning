FROM python:3.7.13-buster

RUN apt-get update
RUN apt install -y locales && localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y fonts-noto-cjk libgl1-mesa-dev libglu1-mesa libxi-dev libxmu-dev vim zlib1g zlib1g-dev git

WORKDIR /app
COPY ./requirements-tfv1.txt requirements.txt

RUN pip install --upgrade pip
RUN --mount=type=cache,target=/root/.cache/pip pip3 install -r requirements.txt