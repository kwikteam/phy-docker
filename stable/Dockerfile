FROM ubuntu:latest
MAINTAINER Cyrille Rossant "cyrille.rossant@gmail.com"

RUN apt-get update && apt-get install -y wget git fontconfig mesa-utils
# Install miniconda and phy.
RUN wget -qO- https://raw.githubusercontent.com/kwikteam/phy-install/master/latest.sh | bash
# Install test dependencies.
RUN $HOME/miniconda/bin/conda install --yes \
    pytest \
    flake8 \
    requests \
    fontconfig
RUN $HOME/miniconda/bin/pip install --upgrade \
    pip \
    responses
ENV PATH=$HOME/miniconda/bin:$PATH
# Run tests.
RUN $HOME/miniconda/bin/py.test $HOME/miniconda/lib/python3.4/site-packages/phy/ -m "not long"
WORKDIR $HOME
