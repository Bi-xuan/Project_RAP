# Employment in Luxembourg
## 1. Introduction
This pipeline uses data from the labor market of Luxembourg, and plots it into small multiples. In addition, it calculates the unemployment rates, fits a curve and plots them.

## 2. Dataset
The dataset is from Eurostat.
Full link: https://lustat.statec.lu/vis?fs[0]=Th%C3%A8mes%2C1%7CPopulation%20et%20emploi%23B%23%7CMarch%C3%A9%20du%20travail%23B5%23&pg=0&fc=Th%C3%A8mes&df[ds]=ds-release&df[id]=DF_B3010&df[ag]=LU1&df[vs]=1.0&pd=2015-01%2C2022-12&dq=M.&ly[cl]=SPECIFICATION&ly[rw]=TIME_PERIOD&lo=12

## 3. Run the Code
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
