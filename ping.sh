#!/bin/bash
myping(){
ping -c2 -i0.3  -w1  1192.168.1.$1 &>/dev/null
if [ $? -eq 0 ];then
  echo "$1 up"
else
  echo  "$1 down"
fi
}

for i in {1..60}
do
myping 192.168.1.$i &
done
echo  $*
