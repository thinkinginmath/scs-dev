# Setup Development Environment

This will set up docker for python, C/C++, SML programming, along with Jupyter Notebook,

## System Requirement

Make sure `docker` and `docker-compose` are installed on your system. On Mac OSX, these are installed through Docker Desktop for Mac OS. See [https://docs.docker.com/docker-for-mac/install/](https://docs.docker.com/docker-for-mac/install/) for details.

## Get started

The docker-compose file specifies the mapping of Jupyter Notebook port to 8888 on the host system. If this port is taken by some other processes, you need to change the mapping in `docker-compose.yml` file. 

The password for Jupyter Notebook is `cmuscs`.




