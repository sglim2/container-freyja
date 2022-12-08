FROM continuumio/miniconda3:4.12.0

ENV FREYJAVERSION=1.3.11
LABEL org.opencontainers.image.version=${FREYJAVERSION}

RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge 

RUN conda install freyja=${FREYJAVERSION} --yes && \
    conda clean -afy


