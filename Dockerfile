FROM jmake/repository:bccc06d9833b59f03b99d8dde4e46ca473a4fbc7

USER root 
#USER jovyan  

WORKDIR /home/jovyan/work 

COPY Untitled.ipynb /home/jovyan/work 
