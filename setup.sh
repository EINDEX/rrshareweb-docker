#bash 
set -e

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

download_link=`wget -q -O - http://app.rrys.tv/ | grep -Eo "http\://appdown\.rrys\.tv/.*linux.*\.tar\.gz"`
version=`echo $download_link |sed -E "s/.*rrshareweb_linux_(.*).tar.gz/\1/"`

wget $download_link
tar -xzf *linux*.tar.gz

docker build . -t rrshareweb -t $DOCKER_USERNAME/rrshareweb:x86_64 -t $DOCKER_USERNAME/rrshareweb:latest -t $DOCKER_USERNAME/rrshareweb:linux -t $DOCKER_USERNAME/rrshareweb:linux_$version -t $DOCKER_USERNAME/rrshareweb:x86_64_$version

docker push $DOCKER_USERNAME/rrshareweb