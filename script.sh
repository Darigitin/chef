#!/bin/bash
for i in {50..98};
do
    ip=10.152.106.$i
    number=`expr $i - 50`
    echo $number
    if [ ${number} -lt 10 ];
    then
        knife node run_list add cs142l-0${number}  'recipe[my_users]'
    else
        knife node run_list add cs142l-${number} 'recipe[my_users]'
    fi


done
exit 0
