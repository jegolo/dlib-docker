FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y  build-essential cmake && \
    apt-get install -y libgtk-3-dev && \
    apt-get install -y libboost-all-dev 

RUN mkdir -p /tmp/work && cd /tmp/work && \
    curl  https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py

RUN pip install numpy && \
    pip install scipy && \
    pip install scikit-image

RUN pip install dlib

RUN pip install opencv-python-headless && \
    pip install opencv-contrib-python-headless     

