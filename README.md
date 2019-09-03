# api
Backend side of orgini app

## install apicra in Pycharm folder

    cd  %USERPROFILE%\PycharmProjects\
    mkdir .apicra
    echo .apicra/ >> .gitignore
    git clone https://github.com/apicra/npm-github-win.git .apicra

## install python module for apicra

    .apicra\-module.bat i python

## install python over apicra


## create project over apicra on github
    .apicra\-project-create.bat "tom-sapletta-com" "apicra/win-python"

## install environment
    apicra/python/install.bat


## install app
    install.bat
    
## Start    
    uvicorn main:app --reload
    
http://127.0.0.1:8000/docs   

http://127.0.0.1:8000/redoc

http://127.0.0.1:8000/items/5?q=somequery


## docker fastapi
https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker

    image.bat
    container.bat
    browser.bat





http:/localhost/docs
http:/localhost/redoc
http:/localhost/items/5?q=somequery


## docker
    .\apicra\docker\run.bat
    .\apicra\docker\stop.bat
    docker images -a
    docker ps -a

## docker - compose

    :: docker build -t  origini-api_front:latest
    docker-compose -f docker-compose.yml up


## Clone
git clone https://github.com/origini/api.git origini-api
cd origini-api

## Deploy
export DOMAIN=api.origini.vodapp.com
export NODE_ID=$(docker info -f '{{.Swarm.NodeID}}')
docker node update --label-add origini.api-data=true $NODE_ID
docker stack deploy -c docker-compose.yml origini
docker stack ps origini
docker service logs origini_api

