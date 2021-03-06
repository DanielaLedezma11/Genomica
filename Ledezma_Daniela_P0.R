#15 de enero 2020 Daniela Ledezma

#ejercicio 1 practica 0 

#se utiliza la finci�n "readRNAStringSet" para leer las secuencias del archivo concatenado
#esto se asigna a un objeto llamado secuencias
secuencias<- readRNAStringSet("first.fasta")

#se verifica que se hayan cargado las secuencias correctamente 
secuencias

#se utiliza la funci�n translate para cambiar los nucletidos a prote�nas
#y se asigna aun objeto llamado traducidas
traducidas<- translate(secuencias)

#se corre el objeto para verificar que las secuneicas se hayan traducido correctamente
traducidas

#Ejercicio 2 practica 0 

#se carga la secuancia que se tuilizar� para el ejercicio utilizando la funci�n 
#" DNAString" y se asigna a un objerto llamado dnar
dnar<- DNAString("AAAACCCGGT")
#se utiliza la funci�n "reverseComplement" para obtener como resultado el rever complemento
# de la secuencia contenida en el objeto dnar 
dnarc<- reverseComplement(dnar)
#se verifica que se haya realizado correctamente
dnarc



#ejercicio 3 
#se carga la secuencia de la que se contaran los nucleotidos utilizando la fuinci�n 
#DNAString y se asigna a un objeto llamado ]"contar"
contar<- DNAString("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")

#se verifica que se haya cargado correctamente
contar

#se utiliza la funci�n "oligonucleotideFrequency" para contar la frecuencia de un nucleotido
#esto se especifica con la opci�n width
fca<- oligonucleotideFrequency(contar,width = 1)
#se verifica el resultado
fca

###########################################################################################
#########Ejercicios sin librerias especializadas###########################################
###########################################################################################

#primero cree un vector con la secuencia de la que se har� el reverso complemento
#cada base es un elemento del vector para poder cambiarlos posteriormente
dnas<- c("A","A","A","A","C","C","C","G","G","T")

#hice un objeto llamado "dnas1" en el que se reemplazar�n los elementos del vector "dnas" 
#que sean iguales a "A" por el n�mero 1, para esto utilic� la funci�n "replace"
dnas1<- replace(dnas, dnas=="A", "1")
#del objeto que se acaba de crear lo utilizo para reemplazar las "C" por el n�mero 2
dnas2<- replace(dnas1, dnas1=="C", "2")
#hice lo mismo para cada base, sustituyendo la "G" por el 3 y la "T" por el 4
dnas3<- replace(dnas2, dnas2=="G", "3")
#primero los reemplace con n�meros para evitar que al final quedara una secuencia de s�lo dos letras
#de esta manera tendr� una secuencia de n�meros
dnas4<- replace(dnas3, dnas3=="T", "4")
#posteriormente reemplace el 1 con el complemento de la base de la secuencia original, en este caso 
#con el complemento de A
dnas5<- replace(dnas4, dnas4=="1", "T")
#hice lo mismo para cada n�mero, el 2 corresponde originalmente a citosina por lo que el complemento ser� guanina
#cada cambio lo asign� a un vector diferente 
dnas6<- replace(dnas5, dnas5=="2", "G")
dnas7<- replace(dnas6, dnas6=="3", "C")
#el vector "dnas8" contiene la secuencia complementaria de la secuencia dada originalmente
dnas8<- replace(dnas7, dnas7=="4", "A")
#al final cree un �ltimo vector y utilic� la funci�n "rev" para obtener el reverso de la secuencia complementaria
dnas9<- rev(dnas8)
#el vector "dnas9" contiene el reverso complemento de la secuencia original
dnas9

#primero hice un vector con la secuencia de la que se contaran las bases, en este caso no fue necesario que cada elemento sea individual
contar1<- c("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
#utilic� la funci�n "nchar" para contar los caracteres del vector "contar1" porque se utilizar� para el siguiente paso
nchar(contar1)
#con la funci�n "substr" se crean subcadenas del vector que contiene la secuencia
#se indica el objeto del que se crearan las subcadenas y de donde a donde se har�n las subcadenas
sub<- substr(contar1, 0, 70)
#utilice la funcion "strsplit" para separar las subcadenas 
sep<- strsplit(sub,"")
#posteriormente desenlistan los elemnetos del vector que contiene las subcadenas
unl<- unlist(sep)
#para ver los resultados se utiliza la funci�n "table" para ver cuantos nucleotidos hay de cada base
table(unl)


