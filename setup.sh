#bash 
set -e

download_link=`wget -q -O - http://app.rrys.tv/ | grep -Eo "http\://appdown\.rrys\.tv/.*linux.*\.tar\.gz"`
version=`echo $download_link |sed -E "s/.*rrshareweb_linux_(.*).tar.gz/\1/"`

wget $download_link
tar -xzf *linux*.tar.gz

docker build . -t x86_64 -t latest -t linux -t linux_$version -t x86_64_$version