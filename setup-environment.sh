docker-machine create default --driver=virtualbox
docker-machine env default
eval $(docker-machine env default)
docker pull jenkins
docker run -p 8080:8080 -p 50000:50000 jenkins