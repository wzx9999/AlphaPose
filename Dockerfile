
FROM ubuntu:20.04

RUN apt-get update \
        && apt-get install --no-install-recommends -y \
        python3-pip \
        libgomp1 \
        libglib2.0-0 \
        libsm6 \
        libxext6 \
        libxrender-dev \
        && rm -rf /var/lib/apt/lists/*
        
# install requirements
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt -f https://download.pytorch.org/whl/torch_stable.html

COPY . .
