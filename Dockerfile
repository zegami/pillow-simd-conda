FROM continuumio/miniconda3:4.1.11
COPY . /recipe
WORKDIR /recipe
RUN conda install conda-build
RUN conda config --add channels conda-forge

RUN conda build /recipe
