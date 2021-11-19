FROM jmake/repository:bccc06d9833b59f03b99d8dde4e46ca473a4fbc7

USER root 

ENV IPYNB_FILE="Untitled2.ipynb"

WORKDIR /home/jovyan/work 

COPY ${IPYNB_FILE} /home/jovyan/work 

ENV NB_USER="jovyan" 

RUN chown -R ${NB_USER} /home/jovyan/work

USER ${NB_USER}

RUN jupyter nbconvert --execute --clear-output ${IPYNB_FILE} 

