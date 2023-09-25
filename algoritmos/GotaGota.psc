Funcion Menu
	Escribir "Digite:"
	Escribir  " 1 <- Ingresar cobro"
	Escribir  " 2 <- Ver ingresos"
	Escribir  " 3 <- Borrar datos"
	Escribir  " 0 <- Salir"
FinFuncion

Funcion TextoCobro
	Escribir "Digite"
	Escribir  "Dia del cobro"
FinFuncion

Funcion verificacion <- ValidacionDia(dia)
	Definir verificacion Como Logico
	si dia < 1 o dia > 31 Entonces
		Escribir "Error", dia
	FinSi
FinFuncion
Algoritmo GotaGota
	Definir  pago, pagoT, descuentos, recargos Como Real
	Definir pagar Como Logico
	pagar <- Falso
	Escribir "¿Desea realizar un pago? -Verdadero -Falso"
	Leer pagar
	Mientras pagar = Verdadero Hacer
		Escribir "Ingrese el pago"
		Leer pago
		Escribir "Ingrese el dia del pago"
		Leer dia
		Si dia <= 10 Entonces
			descuentos <- (pago * 0.02)
			pagoT <- pago - descuentos 
			Escribir "Obtiene descuento del 2% y paga :", pagoT		
		SiNo
			Si dia <= 20 Entonces
				pagoT<- pago
				Escribir "No obtiene descuento y paga:", pagoT
			SiNo
				Si dia <= 31 Entonces
					recargos<- (pago * 0.02)	
					pagoT <- pago  + recargos
					Escribir  "paga con recargo:", pagoT
				FinSi
			FinSi
		FinSi
		PagoTotal<- pagoTotal + pagoT
		Escribir "¿Desea registrar otro pago? -Verdadero -Falso"
		Leer pagar
	FinMientras
	Escribir "Total descuentos: ", descuentos
	Escribir "Total recargos: ", recargos
	Escribir "Total pagos: ", pagoTotal
FinAlgoritmo
