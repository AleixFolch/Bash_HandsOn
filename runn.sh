#Task1:
mkdir bash_HandsOn #Creo directorio
cd bash_HandsOn #Entro en el directorio
mkdir bin #Creo directorio
mkdir input #Creo directorio
mkdir output #Creo directorio
mkdir logs #Creo directorio
mkdir trash #Creo directorio
ls -l #Compruebo directorios
cp -r trash trash2 #Copio el directorio
mv trash trash1 #Cambio de nombre
rm -rf trash2 #Borro directorio


#Task2:
wget https://raw.githubusercontent.com/dgarrimar/teaching/master/uvic/AdvBI_2018/data/hands-on/bash/sample-groups.tsv #Descargo documento
mv sample-groups.tsv input/input.tsv #Cambio nombre
ln -s ../input/input.tsv trash1/input_symlink #Creo un link
cp input/input.tsv trash1/input_copy #Copio el documento
touch trash1/IAmLearningSomeBash #Creo un documento
rm -rf trash1 #Borro directorio


#Task3:
mkdir output/task_3 #Creo directorio
head -n 100 input/input.tsv > output/task_3/top100.tsv #Cojo las primeras 100 lineas del documento
tail -n 50 input/input.tsv > output/task_3/last50.tsv #Cojo las 50 ultimas lineas del documento
wc output/task_3/* #Compruevo las lineas de cada documento
paste output/task_3/top100.tsv output/task_3/last50.tsv > output/task_3/150together.tsv #Junto los dos documentos


#Task4:
mkdir output/task_4 #Creo directorio
cut -f2 input/input.tsv | sort -r | grep -v "Adipose" | grep -v "Artery" | uniq > output/task_4/unique.tissues2.txt #Cojo la segunda columna del documento
cut -f3 input/input.tsv | sort -r | grep -v "Adipose" | grep -v "Artery" | uniq > output/task_4/unique.tissues3.txt #Cojo la tercera columna del documento


#Task5:
wget https://github.com/dgarrimar/teaching/raw/master/uvic/AdvBI_2018/data/hands-on/bash/scripts.tar.gz #Descargo documento
gzip scripts.tar.gz #Descomprimo el documento
tar -xf scripts.tar.gz #Extraer documento
PATH= /home/uvic/bash_HandsOn/ #Creo un Path
mv usage.sh bin #Muevo el documento
chmod +x bin/usage.sh #Doy permiso
bin/usage.sh huhf #Pruevo el documento


#Task6:
wget https://raw.githubusercontent.com/dgarrimar/teaching/master/uvic/AdvBI_2018/data/hands-on/bash/unknown.samples.tsv #Descargo el documento
sort -k1,1 unknown.samples.tsv > a.tsv # Ordeno el documento
mv a.tsv unknown.samples.tsv #Cambio nombre
join -t $'\t' -1 1 -2 1 input/input.tsv unknown.samples.tsv > joint.tsv #Junto documentos
awk '{print$4,$3,$2,$1}' joint.tsv | sed 's/_/ /g' > output/joint.tsv #Imprimo las columnas en orden inverso y cambio caracteres


#Task7:


