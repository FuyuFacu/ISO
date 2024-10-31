#!/bin/bash


renombrar() {
        if [ $# -ne 3 ]; then
                echo "Debes ingresar tres parametros"
		return 1
        fi

	if [ -d $3 ]; then
		cd "$3"
		case $1 in
			"-a")
				for i in *; do
					mv "$i" "${i}${2}"
				done
			;;
			"-b")
				for i in *; do
					mv "$i" "${2}${i}"
				done
			;;
			*)
				echo "Se ingreso un parametro incorrecto"
				return 1
                	;;
		esac
	else
		echo "$3 no es un directorio..."
		exit 0
	fi
}


echo "-a concatena la cadena al final del nombre del archivo"
echo "-b concatena la cadena al principio del nombre del archivo"
echo "Ingrese el parametro"
read opcion
echo "Ingrese la cadena a concatenar"
read cadena
echo "Ingrese el directorio el cual tiene los archivos a modificar"
read directorio
renombrar "$opcion" "$cadena" "$directorio"
