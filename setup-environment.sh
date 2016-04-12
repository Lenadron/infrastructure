MACHINE="microservices"

docker-machine create $MACHINE --driver=virtualbox
docker-machine start $MACHINE
docker-machine env $MACHINE
eval $(docker-machine env $MACHINE)
docker pull jenkins
docker run -p 8080:8080 -p 50000:50000 -v /jenkins:/var/jenkins_home -d jenkins
