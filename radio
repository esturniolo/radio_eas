#!/bin/bash

#Radio by Esturniolo

function sintonia (){
clear
read -p "Seleccione una opción: 
1) FM
2) AM
3) Internacional
x) Salir

" banda

if [ $banda == "1" ]; then
FM;
elif [ $banda == "2" ]; then
AM;
elif [ $banda == "3" ]; then
Internacional;
elif [ $banda == "x" ]; then
x;
else
echo -e "\nPor favor introduzca 1 para FM, 2 para AM, 3 para radios Internacionales o 'x' para salir.\n"
sintonia;
fi
}


function FM (){
clear
while true; do

#echo -e "\n"
echo "--------------------"
echo -e "\e[1;4mBanda FM sintonizada\e[0m"
echo "--------------------"

read -p " 
Seleccione: 
1) Vorterix		2) La 100		3) Aspen		4) La Tribu


				«« s) Detener reproducción   b) Cambiar banda   x) Apagar radio »»

" estacion 

case $estacion in
                1)       
     		    #Vorterix
		    echo -e "\n"
		    nohup mplayer rtsp://r20057.smi.vmf.edge-apps.net/magma-apps/vorterix_radio1_high > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mVorterix Rock 92.1 FM\e[0m"
		    echo -e "\n"
		    ;;
     		2)  #La 100
		    echo -e "\n"
		    nohup http://buecrplb01.cienradios.com.ar/la100.mp3 > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mLa 100 99.9 FM\e[0m"
		    echo -e "\n"
		    ;;
     		3)  #Aspen
		    echo -e "\n"
		    nohup http://201.212.5.144/aspen > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mAspen 102.3 FM\e[0m"
		    echo -e "\n"
		    ;;
     		4)  #La Tribu
		    echo -e "\n"
		    nohup http://vivo.fmlatribu.com:8000/latribu.mp3 > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mLa Tribu 88.7 FM\e[0m"
		    echo -e "\n"
		    ;;
                s)       
     		    killall mplayer
		    echo -e "\n\n-----------------------"
		    echo -e "|Reproducción detenida|"
		    echo -e "-----------------------\n\n"
                    ;;
                b)  
		    sintonia
		    ;;
		x)
                    x 
		    ;;
		*)
		    echo -e "\n\nPor favor ingrese el número de estación, 's' para detener la reproducción, 'b' para cambiar de banda o 'x' para salir\n\n" 
          esac
done 
}

function AM (){
clear
while true; do

#echo -e "\n"
echo "--------------------"
echo -e "\e[1;4mBanda AM sintonizada\e[0m"
echo "--------------------"

read -p "

Seleccione: 
1) Radio Mitre		


				«« s) Detener reproducción   b) Cambiar banda   x) Apagar radio »»

" estacion

case $estacion in
                1)
                    #Radio Mitre
		    echo -e "\n"
                    nohup mplayer http://buecrplb01.cienradios.com.ar/Mitre790.aac > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mRadio Mitre AM 790\e[0m"
		    echo -e "\n"
                    ;;
                s)
                    killall mplayer
                    echo -e "\n\n-----------------------"
                    echo -e "|Reproducción detenida|"
                    echo -e "-----------------------\n\n"
                    ;;
                b)  sintonia
		    echo -e "\n\nBanda FM Sintonizada\n\n"
                    ;;
                x)
                    x
                    ;;
                *)
                    echo -e "\n\nPor favor ingrese el número de estación, 's' para detener la reproducción, 'b' para cambiar de banda o 'x' para salir\n\n"
          esac
done
}


function Internacional (){
clear
while true; do

#echo -e "\n"
echo "-------------------------------"
echo -e "\e[1;4mBanda Internacional sintonizada\e[0m"
echo "-------------------------------"

read -p "

Seleccione: 
1) Spoon Radio (FR)		


				«« s) Detener reproducción   b) Cambiar banda   x) Apagar radio »»

" estacion 

case $estacion in
                1)       
     		    #Spoon Radio
		    echo -e "\n"
		    nohup http://spoonradio.ice.infomaniak.ch:80/spoonradio-high > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mSpoon Radio Rock\e[0m"
		    echo -e "\n"
		    ;;
                s)       
     		    killall mplayer
		    echo -e "\n\n-----------------------"
		    echo -e "|Reproducción detenida|"
		    echo -e "-----------------------\n\n"
                    ;;
                b)  
		    sintonia
		    ;;
		x)
                    x 
		    ;;
		*)
		    echo -e "\n\nPor favor ingrese el número de estación, 's' para detener la reproducción, 'b' para cambiar de banda o 'x' para salir\n\n" 
          esac
done 
}

function x (){
echo -e "\n\nGracias por usar la radio\n\n"
exit 0
}

clear
sintonia
