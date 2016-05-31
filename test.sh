#/bin/sh

chmod +x $1
sed -i "s/LOCALES//g" $1
sed -i "s/PROXY//g" $1
sed -i "s/APTLISTBUGS//g" $1
sed -i "s/NORECOMMENDS//g" $1
sed -i "s/clear//g" $1
yes | ./$1
