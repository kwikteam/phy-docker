FROM ubuntu:latest
MAINTAINER Cyrille Rossant "cyrille.rossant@gmail.com"

RUN apt-get update && apt-get install -y wget
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /miniconda.sh && \
    /bin/bash /miniconda.sh -b -p /opt/conda && \
    rm miniconda.sh && \
    /opt/conda/bin/conda install --yes \
    conda \
    python=3 \
    pip \
    numpy \
    scipy \
    matplotlib \
    h5py \
    pyqt \
    ipython-notebook
ENV PATH /opt/conda/bin:$PATH
RUN apt-get install -y \
    git \
    fontconfig \
    mesa-utils \
    binutils \
    libglib2.0-0 \
    libsm6
RUN conda install --yes \
    requests \
    pytest \
    flake8 \
    fontconfig
RUN pip install responses \
    git+https://github.com/vispy/vispy.git && \
    pip install git+git://github.com/rossant/phy.git@bug-fixes
RUN apt-get install -y libxrender1
RUN adduser --disabled-password --gecos '' docker
WORKDIR /home
