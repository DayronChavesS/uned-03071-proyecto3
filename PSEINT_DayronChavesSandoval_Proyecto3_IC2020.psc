// UNIVERSIDAD ESTATAL A DISTANCIA 
// VICERRECTORIA ACADEMICA
// ESCUELA DE LAS CIENCIAS EXACTAS Y NATURALES
// CATEDRA DESARROLLO DE SISTEMAS
// DIPLOMADO EN INFORMATICA
// Codigo:03071
// Logica para Computacion
// Proyecto 3 (Remplaza Ordinario 1)
// Grupo:01
// Estudiante: Dayron Antony Chaves Sandoval
// Cedula: 0305240018
// PRIMER CUATRIMESTRE,2020

//Explicacion: El programa solicitara un numero arabe, y lo convertira a Romano.

Algoritmo Conversor_Arabigo_Romano

	//FASE 1: DECLARACION DE VARIABLES
	
	//Numero que digita el Usuario.
	Definir NumeroUsuario Como Entero;
	
	//Estos rangos ayudan al programa a validar el numero del usuario.
	Definir RangoMinimo Como Entero; 				
	Definir RangoMaximo Como Entero;
	
	//Variable que finaliza (o no) el bucle.
	Definir HacerConversion Como Caracter;		
	
	//Variables donde se guardan los Numeros Arabigos.
	Definir UnidadArabigo Como Entero;
	Definir DecenaArabigo Como Entero;
	Definir CentenaArabigo Como Entero;
	Definir MillarArabigo Como Entero;
	
	//Variables donde se guardan los Numeros Romanos.
	Definir UnidadRomano Como Caracter;
	Definir DecenaRomano Como Caracter;
	Definir CentenaRomano Como Caracter;
	Definir MillarRomano Como Caracter;
	
	//Se inicia el Ciclo de Conversion
	Repetir
		Limpiar Pantalla;
		
			//FASE 2: INICIALIZACION DE VARIABLES
			HacerConversion = "S"; 
			NumeroUsuario = 0;			
			RangoMinimo = 1;				
			RangoMaximo = 3999;
			UnidadArabigo = 0;
			DecenaArabigo = 0;
			CentenaArabigo = 0;
			MillarArabigo = 0;
			UnidadRomano = "";
			DecenaRomano= "";
			CentenaRomano= "";
			MillarRomano= "";
		
			//Se inicia el Ciclo de Validacion de Numero.
			Mientras NumeroUsuario < RangoMinimo O NumeroUsuario > RangoMaximo Hacer
			
				//FASE 3: LECTURA DE DATOS
				Escribir "C O N V E R S O R  D E  A R A B I G O  A  R O M A N O";
				Escribir "";
				Escribir "Digite un numero entero entre 1 y 3999:";
				Leer NumeroUsuario;
				
					//Se verifica el numero y se informa al usuario si este es invalido.
					Si NumeroUsuario < RangoMinimo O NumeroUsuario > RangoMaximo Entonces
						Escribir "El numero digitado no esta entre 1 y 3999, favor digitelo de nuevo.";
						Esperar 2 Segundos;
						Escribir "Presione una tecla para continuar.";
						Esperar Tecla;
						Limpiar Pantalla;
					FinSi
					
			//Si el numero es invalido el ciclo se repite.
			FinMientras
		
			//FASE 4: PROCESAMIENTO DE DATOS
			
			//Paso 1: Descomponer el numero y guardar su valor en la variable respectiva. Ej: 3999 = 3000+900+90+9
			MillarArabigo			<-Trunc		(NumeroUsuario/1000) 	mod 10;
			CentenaArabigo			<-Trunc		(NumeroUsuario/100) 	mod 10;
			DecenaArabigo			<-Trunc		(NumeroUsuario/10) 		mod 10;
			UnidadArabigo			<-Trunc		(NumeroUsuario) 		mod 10;
			
			//Paso 2:Definir de un conjunto de opciones, el numero romano que le corresponde al valor guardado previamente.
			Segun MillarArabigo Hacer
				0: MillarRomano="";
				1: MillarRomano="M";
				2: MillarRomano="MM";
				3: MillarRomano="MMM";
			FinSegun
			
			Segun CentenaArabigo Hacer
				0: CentenaRomano="";
				1: CentenaRomano="C";
				2: CentenaRomano="CC";
				3: CentenaRomano="CCC";
				4: CentenaRomano="CD";
				5: CentenaRomano="D";
				6: CentenaRomano="DC";
				7: CentenaRomano="DCC";
				8: CentenaRomano="DCCC";
				9: CentenaRomano="CM";
			FinSegun
			
			Segun DecenaArabigo Hacer
				0: DecenaRomano="";
				1: DecenaRomano="X";
				2: DecenaRomano="XX";
				3: DecenaRomano="XXX";
				4: DecenaRomano="XL";
				5: DecenaRomano="L";
				6: DecenaRomano="LX";
				7: DecenaRomano="LXX";
				8: DecenaRomano="LXXX";
				9: DecenaRomano="XC";
			FinSegun
			
			Segun UnidadArabigo Hacer
				0: UnidadRomano="";
				1: UnidadRomano="I";
				2: UnidadRomano="II";
				3: UnidadRomano="III";
				4: UnidadRomano="IV";
				5: UnidadRomano="V";
				6: UnidadRomano="VI";
				7: UnidadRomano="VII";
				8: UnidadRomano="VIII";
				9: UnidadRomano="IX";
			FinSegun
		
			//FASE 5: MOSTRAR RESULTADOS
			Escribir "";
			Escribir "La conversion del numero arabigo:(",NumeroUsuario,"), a numero romano es:(",MillarRomano, CentenaRomano, DecenaRomano, UnidadRomano,").";
		
			//Preguntar al usuario si desea hacer una nueva conversion.
			Esperar 3 Segundos;
			Escribir  "";
			Escribir "Desea realizar una nueva conversion? S/N";
			Leer HacerConversion;
		
			//Si el usuario a elegido no, entonces el programa se despedira y saldra del ciclo.
			Si HacerConversion = "N" Entonces
				Limpiar Pantalla;
				Escribir "Gracias por utilizar mi programa.";
			FinSi
		
	Hasta Que HacerConversion = "N"
	
FinAlgoritmo
