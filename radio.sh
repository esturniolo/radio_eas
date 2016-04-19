#!/bin/bash

#Radio by Esturniolo

echo -e "\e[1;4mEstaciones Disponibles\e[0m
     1)Vorterix
     Mitre\n"


read -p "Seleccione una banda: 
1) FM
2) AM
" banda


function FM (){
while true; do

read -p "

Banda FM sintonizada.

Seleccione: 
1) Vorterix		s) Detener reproducción		b) Cambiar a AM		x) Apagar radio

" estacion 

case $estacion in
                1)       
     		    #Vorterix
		    echo -e "\n"
		    nohup mplayer rtsp://r20057.smi.vmf.edge-apps.net/magma-apps/vorterix_radio1_high > /dev/null 2>&1 &
                    echo -e "Reproduciendo \e[1;4mVorterix Rock 92.1 FM\e[0m"
		    echo -e "\n"
		    ;;
                s)       
     		    killall mplayer
		    echo -e "\n\n-----------------------"
		    echo -e "|Reproducción detenida|"
		    echo -e "-----------------------\n\n"
                    ;;
                b)  
		    AM
		    ;;
		x)
		    echo -e "\n\nAguante la radio, careta!"
                    break
		    ;;
		*)
		    echo -e "\n\nPor favor ingrese el número de estación, 's' para detener la reproducción, 'b' para cambiar de banda o 'x' para salir\n\n" 
          esac
done 
}

function AM (){
while true; do

read -p "

Banda AM sintonizada.

Seleccione: 
1) Radio Mitre		s)Detener reproducción		b) Cambiar a FM		s)Apagar radio

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
                b)  FM
		    echo -e "\n\nBanda FM Sintonizada\n\n"
                    ;;
                x)
                    echo -e "\n\nAguante la radio, careta!"
                    break
                    ;;
                *)
                    echo -e "\n\nPor favor ingrese el número de estación, 's' para detener la reproducción, 'b' para cambiar de banda o 'x' para salir\n\n"
          esac
done
}

if [ $banda -eq 1 ]; then
FM;
elif [ $banda -eq 2 ]; then
AM;
else
echo "Por favor introduzca 1 para FM o 2 para AM";
fi
