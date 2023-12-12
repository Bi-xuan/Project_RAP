FROM rocker/r-ver:4.3.2

RUN mkdir /home/Project_RAP

RUN mkdir /home/Project_RAP/shared_folder

COPY my_script.R /home/Project_RAP/my_script.R

CMD R -e 'setwd("/home/Project_RAP"); source("my_script.R")'