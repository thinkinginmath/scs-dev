FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN apt-get update && apt-get install -y vim  emacs-nox build-essential smlnj

RUN pip3 install ipython jupyterlab

COPY . /root/sml
WORKDIR /root/sml

RUN jupyter kernelspec install kernels/smlnj

RUN /root/sml/setup_jupyter.sh

RUN mkdir -p /app/notebook
WORKDIR /app/notebook

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--ip='*'"]