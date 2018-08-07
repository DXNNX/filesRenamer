#!/bin/bash
if [ 0 -eq $# ]
then
 	echo "Modo de uso:";
	echo "Parametro 1: Ruta del directorio en el que se buscará, puede ser relativa o absoluta\nRuta Relativa: Si el renamer.sh está en el escritorio y la carpeta que se desea recorrer está en el escritorio se puede poner simplemente NombreCarpeta";
	echo "Ruta absoluta: Se pone la ruta completa en el sistema (Ej UNIX: /Users/dxnnx/Desktop/Folder) (Ej Windows: c:\Users\dxnnx\Desktop\Folder)\n";
	echo "Parametro 2: Tipo de extensión (Ej: png, jpg, pdf) (no se incluye el punto)";
	echo "Parametro 3: Prefijo a eliminar, todo lo que está antes de lo que no quieres borrar (Ej: archivo12.txt, si quieres conservar solo el 12 pones 'archivo')";
	echo "Parametro 4: Sufijo a eliminar, todo lo que está antes de lo que no quieres borrar (Ej: archivo12-www.txt, si quieres quitar -www solo el numero pones '-www')";
	echo "Parametro 5: Prefijo a agregar";
	echo "Parametro 6: Sufijo a aregar";
	echo
	echo "Nota #1: Si algunos de los parametros lo los utilizará, en su lugar poner comillas dobles \"\""
	echo "Nota #2: Si un prefijo o sufijo tiene espacios, poner el dato entre comillas (Ej: \"Imagen Concierto - 1\" para eliminar la parte de 'Imagen Concierto - ' y conservar solo el numero se pone entre comillas sencillas o dobles)"
 	exit 0;
fi

if [ ! -d "$1/output" ]
then 
    mkdir "$1/output";
fi

for files in "$1/*.$2"; do

	listFiles=$(echo $files | tr " " "\n")

	for filename in $listFiles
	do
		original="${filename}";
    	filename=${filename#"$1/$3"};
		filename=${filename%"$4.$2"};
		cp $original "$1/output/$5$filename$6.$2";
	done
	echo "Operación finalizada!"
done