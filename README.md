# phy-docker

Use this Dockerfile to create a docker image with phy and all of its dependencies.

## Instructions

* [Install Docker](https://docs.docker.com/installation/)
* Build the Docker container with phy:

```
# Clone the Dockerfile.
git clone https://github.com/kwikteam/phy-docker.git && cd phy-docker/stable
# Build the Docker image -- this will download 1GB+ data and take a *while* the first time
docker build -t "phy" .
# Run the Docker container and launch the short test suite to check that everything is working.
docker run --rm phy py.test /opt/conda/lib/python3.4/site-packages/phy -m "not long"
```

* Then you can log in to the container with `docker run -it phy`. Then you have root access to the container.

## Command-line use with IPython

Coming soon...

## Running and exposing a Jupyter notebook

Coming soon...

## Running the GUI inside the container

Coming soon...

Things to work out:

* Install the dependencies for running a X server
* Make GUIs work
* Activate GPU acceleration within the container

## Mounting a host volume in the container

Coming soon...

To access any dataset from within the container.
