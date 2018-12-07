# SOTA DOCS

This repo contains the Italian translation of SOTA (Summit on the air) General Rules document.

For more information about SOTA, please visit [https://www.sota.org.uk/](https://www.sota.org.uk/)

## Project structure

This project uses R Markdown language to create a versionable, reproducible and easy to contribute version of document. More information about R Markdown can be found here [https://rmarkdown.rstudio.com/](https://rmarkdown.rstudio.com/).

Using R Markdown sources various formats of documents, such as HTML or pdf, can be generated. Sources files and command lines listed below assume a pdf file output.

The main entry file is located in `src/index.Rmd`, each chapter or subchapter is added as a separated file referenced in index.Rmd file.

## Pre-requisites

This project uses a docker container to run R Markdown compilation, therefore is required to have [Docker](https://www.docker.com/) installed.

Also GIT is required to clone and contribute to the project. To install GIT please follow the instruction at [https://git-scm.com/](https://git-scm.com/).

## Running the project

The following instruction refers to a unix environment (Linux, OSX). For windows users commands might differ.

### Cloning the project

Run the following command:

`git clone git@github.com:gabric098/sotadocs.git`

### Running docker container

Run docker with the following command:

`cd sotadocs`

`docker run --rm -it -v  <local-sotadocs-folder>:/home/sotadocs r-docker:latest`

Note that local-sotadocs-folder is normally `~/sotadocs`

This command will start the docker container, open a shell and map the local directory described above to the contaier directory called `/home/sotadocs`

### Building project

`cd /home/sotadocs`

`R -e "rmarkdown::render('src/index.Rmd',output_file='../dist/sotadocs.pdf')"`

This command will produce a file called `sotadocs.pdf` in the `dist` directory of the project.

## Help with the project

I'm not a professional translator and I'm sure the current version of the document can be improved. Any contribution is valuable and I encourage you to help with the project.
If you have experience with GIT, docker and R Markdown, you can just fork the project, add your contribution and create a pull request agains this repo. If you don't feel comfortable with this environment, you can send your contribution via email, I'll take care of integrate it in the repo.

## Copyright disclaimer

"Summits on the Air", SOTA and the SOTA logo are trademarks of the Programme. All documents published by the official SOTA Programme are the copyright of The Programme. No documents or data may be copied or used for commercial or website use without permission.