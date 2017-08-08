FROM ubuntu:16.04

RUN apt-get -qq -y update \
 && apt-get -qq -y install --no-install-recommends \
    build-essential \
    cmake \
    doxygen \
    python \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ADD . /clsquare
WORKDIR /clsquare
RUN mkdir build \
 && cd build \
 && cmake .. \
 && make install \
 && make doc
RUN ln -s tools/docker/serve_doc.sh /bin/serve_doc
