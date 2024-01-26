FROM rocker/r-ver:4.2.2

COPY renv /renv

COPY renv.lock /renv.lock

RUN R -e "install.packages('renv')"
RUN R -e "renv::restore()"

RUN mkdir /home/graphs

COPY _targets.R /_targets.R

COPY functions.R /functions.R

COPY data.xlsx /data.xlsx

CMD R -e "targets::tar_make()"