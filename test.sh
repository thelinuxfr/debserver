#/bin/sh

### Fix docker
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
# setup docker modifications to NOT gzip indexes
sed -i 's/Acquire::GzipIndexes "true"/Acquire::GzipIndexes "false"/g' /etc/apt/apt.conf.d/docker-gzip-indexes

chmod +x $1
sed -i "s/LOCALES//g" $1
sed -i "s/PROXY//g" $1
sed -i "s/APTLISTBUGS//g" $1
sed -i "s/NORECOMMENDS//g" $1
sed -i "s/clear//g" $1
yes | ./$1
