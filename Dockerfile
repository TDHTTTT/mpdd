FROM rootproject/root-ubuntu16

USER root
WORKDIR /home/mpd
ARG PYTHIA8=/home/mpd/pythia8235

RUN apt-get update && apt-get install -y wget gfortran && \
    rm -rf /var/lib/apt/lists/*

RUN wget http://home.thep.lu.se/~torbjorn/pythia8/pythia8235.tgz && \
    tar xzf pythia8235.tgz && rm pythia8235.tgz && \
    cd pythia8235 && \
    ./configure --prefix=/home/mpd/pythia8235 && \
    make install

RUN wget http://cp3.irmp.ucl.ac.be/downloads/Delphes-3.4.1.tar.gz && \
    tar xzf Delphes-3.4.1.tar.gz && rm Delphes-3.4.1.tar.gz && \
    cd Delphes-3.4.1 && \
    make HAS_PYTHIA8=true

RUN wget https://launchpad.net/mg5amcnlo/2.0/2.6.x/+download/MG5_aMC_v2.6.5.tar.gz && \
    tar xzf MG5_aMC_v2.6.5.tar.gz && rm MG5_aMC_v2.6.5.tar.gz

COPY ./tst /home/mpd/tst

CMD /bin/bash
