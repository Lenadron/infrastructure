echo '
 # Start & Attach to Docker Function
gimmedocker() { if [ $1 ]; then
    docker-machine start $1
    docker-machine env $1
    eval $(docker-machine env $1)
    docker ps -a
fi }

 # Clean Docker Function
cleandocker() {
	  docker rm $(docker ps -a -q)
	  docker rmi $(docker images -q)
}' >>~/.bash_profile
