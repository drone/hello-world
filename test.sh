i=0; while [ $i -le 100 ]; do  
  echo "$i minutes passed"
  sleep 60
  i=$(( i + 1 ))  
done
