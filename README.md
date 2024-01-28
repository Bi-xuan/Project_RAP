# Employmenet in Luxembourg
## 1. Introduction
This pipeline uses data from the labor market of Luxembourg, and plots it into small multiples. In addition, it calculates the unemployment rates, fits a curve and plots them.

## 2. Run the Code
Clone the repository:
```
git clone git@github.com:Bi-xuan/Project_RAP.git
```
Build docker image:
```
docker build -t pipe_unemp_lux .
```
Run the pipeline: (Replace path/to/Project_RAP with actural path to the repository)
```
docker run --rm --name demo_container -v path/to/Project_RAP/fig/:/home/graphs:rw pipe_unemp_lux
```
After this command, there should be two figures under the /fig folder.
