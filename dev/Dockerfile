FROM ubuntu:latest
MAINTAINER Cyrille Rossant "cyrille.rossant@gmail.com"

RUN apt-get update && apt-get install -y wget git fontconfig
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
    ipython-notebook \
    requests \
    pytest \
    flake8 \
    fontconfig
ENV PATH /opt/conda/bin:$PATH
RUN pip install --upgrade \
    pip \
    responses \
    git+https://github.com/vispy/vispy.git && \
    pip install git+git://github.com/kwikteam/phy.git
WORKDIR /home
