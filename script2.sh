read -p "Dime la primera ciudad: " ciudad1
read -p "Dime la segunda ciudad: " ciudad2

contador=1
contadorciudad1=0
contadorciudad2=0

maxLineas=`cat instructores.txt | wc -l`

while [ $contador -le $maxLineas ];do
    
    ciudades=`cat instructores.txt | head -${contador} | tail -1 | awk '{print $4}'`

    if [ $ciudades == $ciudad1 ]; then
	contadorciudad1=$(($contadorciudad1+1))
    fi
    if [ $ciudades == $ciudad2 ]; then
	contadorciudad2=$(($contadorciudad2+1))
    fi
contador=$(($contador+1))
done
 
echo "Ciudad 1: $ciudad1"
echo "Numero 1: $contadorciudad1"
echo "Ciudad 2: $ciudad2"
echo "Numero 2: $contadorciudad2"
