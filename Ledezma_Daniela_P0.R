#15 de enero 2020 Daniela Ledezma

#ejercicio 1 practica 0 

#se utiliza la finción "readRNAStringSet" para leer las secuencias del archivo concatenado
#esto se asigna a un objeto llamado secuencias
secuencias<- readRNAStringSet("first.fasta")

#se verifica que se hayan cargado las secuencias correctamente 
secuencias

#se utiliza la función translate para cambiar los nucletidos a proteínas
#y se asigna aun objeto llamado traducidas
traducidas<- translate(secuencias)

#se corre el objeto para verificar que las secuneicas se hayan traducido correctamente
traducidas

#Ejercicio 2 practica 0 

#se carga la secuancia que se tuilizará para el ejercicio utilizando la función 
#" DNAString" y se asigna a un objerto llamado dnar
dnar<- DNAString("AAAACCCGGT")
#se utiliza la función "reverseComplement" para obtener como resultado el rever complemento
# de la secuencia contenida en el objeto dnar 
dnarc<- reverseComplement(dnar)
#se verifica que se haya realizado correctamente
dnarc



#ejercicio 3 
#se carga la secuencia de la que se contaran los nucleotidos utilizando la fuinción 
#DNAString y se asigna a un objeto llamado ]"contar"
contar<- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

#se verifica que se haya cargado correctamente
contar

#se utiliza la función "oligonucleotideFrequency" para contar la frecuencia de un nucleotido
#esto se especifica con la opción width
fca<- oligonucleotideFrequency(contar,width = 1)
#se verifica el resultado
fca

###########################################################################################
#########Ejercicios sin librerias especializadas###########################################
###########################################################################################

#primero cree un vector con la secuencia de la que se hará el reverso complemento
#cada base es un elemento del vector para poder cambiarlos posteriormente
dnas<- c("A","A","A","A","C","C","C","G","G","T")

#hice un objeto llamado "dnas1" en el que se reemplazarán los elementos del vector "dnas" 
#que sean iguales a "A" por el número 1, para esto utilicé la función "replace"
dnas1<- replace(dnas, dnas=="A", "1")
#del objeto que se acaba de crear lo utilizo para reemplazar las "C" por el número 2
dnas2<- replace(dnas1, dnas1=="C", "2")
#hice lo mismo para cada base, sustituyendo la "G" por el 3 y la "T" por el 4
dnas3<- replace(dnas2, dnas2=="G", "3")
#primero los reemplace con números para evitar que al final quedara una secuencia de sólo dos letras
#de esta manera tendré una secuencia de números
dnas4<- replace(dnas3, dnas3=="T", "4")
#posteriormente reemplace el 1 con el complemento de la base de la secuencia original, en este caso 
#con el complemento de A
dnas5<- replace(dnas4, dnas4=="1", "T")
#hice lo mismo para cada número, el 2 corresponde originalmente a citosina por lo que el complemento será guanina
#cada cambio lo asigné a un vector diferente 
dnas6<- replace(dnas5, dnas5=="2", "G")
dnas7<- replace(dnas6, dnas6=="3", "C")
#el vector "dnas8" contiene la secuencia complementaria de la secuencia dada originalmente
dnas8<- replace(dnas7, dnas7=="4", "A")
#al final cree un último vector y utilicé la función "rev" para obtener el reverso de la secuencia complementaria
dnas9<- rev(dnas8)
#el vector "dnas9" contiene el reverso complemento de la secuencia original
dnas9

#primero hice un vector con la secuencia de la que se contaran las bases, en este caso no fue necesario que cada elemento sea individual
contar1<- c("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
#utilicé la función "nchar" para contar los caracteres del vector "contar1" porque se utilizará para el siguiente paso
nchar(contar1)
#con la función "substr" se crean subcadenas del vector que contiene la secuencia
#se indica el objeto del que se crearan las subcadenas y de donde a donde se harán las subcadenas
sub<- substr(contar1, 0, 70)
#utilice la funcion "strsplit" para separar las subcadenas 
sep<- strsplit(sub,"")
#posteriormente desenlistan los elemnetos del vector que contiene las subcadenas
unl<- unlist(sep)
#para ver los resultados se utiliza la función "table" para ver cuantos nucleotidos hay de cada base
table(unl)


