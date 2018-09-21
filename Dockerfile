FROM rocker/r-base

RUN apt-get update && apt-get install -y \
    pandoc \
    python-citeproc \
    texlive \
    texlive-full

RUN mkdir /home/sotadocs
RUN R -e "install.packages('rmarkdown')"

VOLUME /home/sotadocs

ENTRYPOINT ["sh", "-c", "/bin/bash"]