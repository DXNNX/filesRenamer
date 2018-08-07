# filesRenamer
Renombrar archivos en bash

Modo de uso:
Parametro 1: Ruta del directorio en el que se buscará, puede ser relativa o absoluta
Ruta Relativa: Si el renamer.sh está en el escritorio y la carpeta que se desea recorrer está en el escritorio se puede poner simplemente NombreCarpeta
Ruta absoluta: Se pone la ruta completa en el sistema (Ej UNIX: /Users/dxnnx/Desktop/Folder) (Ej Windows: c:\Users\dxnnx\Desktop\Folder)

Parametro 2: Tipo de extensión (Ej: png, jpg, pdf) (no se incluye el punto)
Parametro 3: Prefijo a eliminar, todo lo que está antes de lo que no quieres borrar (Ej: archivo12.txt, si quieres conservar solo el 12 pones 'archivo')
Parametro 4: Sufijo a eliminar, todo lo que está antes de lo que no quieres borrar (Ej: archivo12-www.txt, si quieres quitar -www solo el numero pones '-www')
Parametro 5: Prefijo a agregar
Parametro 6: Sufijo a aregar

Nota #1: Si algunos de los parametros lo los utilizará, en su lugar poner comillas dobles ""
Nota #2: Si un prefijo o sufijo tiene espacios, poner el dato entre comillas (Ej: "Imagen Concierto - 1" para eliminarla parte de 'Imagen Concierto - ' y conservar solo el numero se pone entre comillas sencillas o dobles)

Correr en UNIX:
sh renamer.sh folder extension prefijoBorrar sufijoBorrar prefijoAgregar sufijoAgregar

Los nuevos archivos se guardarán en folder/output, no se reemplazan por motivos de seguridad.
