
FROM ubuntu:20.04
USER root
WORKDIR /

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
        python3-pip \
        python3-setuptools \
        python3-dev \
        git \
        libgomp1 \
        libglib2.0-0 \
        libsm6 \
        libxext6 \
        libxrender-dev
        
# get AlphaPose
RUN git clone -b pytorch-cpu https://github.com/nickgrealy/AlphaPose.git
WORKDIR /AlphaPose
RUN pip3 install --no-cache-dir -r requirements.txt -f https://download.pytorch.org/whl/torch_stable.html

# copy in models
ADD duc_se.pth ./models/sppe/
ADD yolov3-spp.weights ./models/yolo/
