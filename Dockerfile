FROM 3.9.6-buster

RUN apt update && apt upgrade -y
RUN apt-get install git curl ffmpeg -y
# RUN pip3 install -U pip
RUN cd /
# RUN git clone https://github.com/HDCodePractice/MusicPlayer.git
COPY . /MusicPlayer/
RUN cd MusicPlayer
WORKDIR /MusicPlayer
RUN pip3 install -U -r requirements.txt
WORKDIR /data
CMD python3 /MusicPlayer/main.py