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

#Ejercicio 2 practoca 0 

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
