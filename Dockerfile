FROM jmake/repository:bccc06d9833b59f03b99d8dde4e46ca473a4fbc7

ENV IPYNB_FILE="Untitled2.ipynb"

ENV NB_USER="jovyan" 

USER root 

WORKDIR /home/jovyan/work 

COPY *.ipynb /home/jovyan/work 

RUN chown -R ${NB_USER} /home/jovyan/work

USER ${NB_USER}

RUN jupyter nbconvert --execute --clear-output ${IPYNB_FILE} 

COPY ${IPYNB_FILE} from_docker.ipynb

RUN tar -cvzf results.tar.gz /home/jovyan/work/*.*  
