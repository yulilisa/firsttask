#!/bin/bash
md5sum test.log > test.md5;
sed "10,20p" -n test.log > des.log;
sed -i '1s/filter/haha/' test.log;
sed -i '1s/filter/haha/g' test.log;
sed -i '3,5s/filter/haha/2' test.log;
sed -i 's/TRACE/haha/g' test.log;
cut -d ' ' -f1-3 test.log;
awk -F ' ' '{if($3=="100")print $0}' > dest.log;
awk -F ' ' '{if(++a[$3]==1)print $3}';
begin=$1
end=$2
step=$3
for(i=${begin};i<=${end};i=$(($i+${step})))
   do
      echo $i
   done
