# SOTA DOCS

## Running docker container

Run docker with the following command:

`docker run --rm -it -v  <local-sotadocs-folder>:/home/sotadocs r-docker:latest`

## Building project

`cd /home/sotadocs`

`R -e "rmarkdown::render('src/index.Rmd',output_file='../dist/sotadocs.html')"`