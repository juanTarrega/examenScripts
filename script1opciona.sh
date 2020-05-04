fin="false"

read -p "introduce un num: " num

while [ $fin = "false" ]; do

for i in 4 3 2 1 0; do
    num=$(($num-1))
 echo "el num es: $num"
done

if [ $num -le 0 ]; then
    fin="true"
fi
done