echo '' >>~/.bash_profile
echo ' # Start & Attach to Docker Function' >>~/.bash_profile
echo 'gimmedocker() { if [ $1 ]; then' >>~/.bash_profile
echo '    docker-machine start $1' >>~/.bash_profile
echo '    docker-machine env $1' >>~/.bash_profile
echo '    eval $(docker-machine env $1)' >>~/.bash_profile
echo '    docker ps -a' >>~/.bash_profile
echo 'fi }' >>~/.bash_profile
echo '' >>~/.bash_profile
echo ' # Clean Docker Function' >>~/.bash_profile
echo 'cleandocker() {' >>~/.bash_profile
echo '	  docker rm $(docker ps -a -q)' >>~/.bash_profile
echo '	  docker rmi $(docker images -q)' >>~/.bash_profile
echo '}' >>~/.bash_profile
