FROM rocker/r-ver:4.3.2

RUN mkdir /home/Project_RAP

RUN mkdir /home/Project_RAP/shared_folder

COPY my_script.R /home/Project_RAP/my_script.R

RUN R -e "source("my_script.R")"