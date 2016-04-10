cd /usr/local/
mkdir maven
cd maven
curl -O http://mirrors.ocf.berkeley.edu/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip
unzip apache-maven-3.3.9-bin.zip

echo '
# Maven Path
export PATH=/usr/local/maven/apache-maven-3.3.9/bin/:$PATH
' >>~/.bash_profile

source ~/.bash_profile

mvn -v