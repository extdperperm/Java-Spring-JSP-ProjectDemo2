<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 2 - Ejemplo 2</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos est�ticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma est�tica, pero si cambia en las controladoras la ubicaci�n l�gica y relativas mapeadas, podr�an producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="../styles/index.css">
</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel2">
            <!--Ejemplo de notaci�n en java de Expression language (EL) haciendo uso de $. Como se comprueba en este ejemplo, t�cnicamente no es obligatorio que la controladora
                deba tramitar los par�metros recibidos.
                
                Se hace uso de la tag library, en este caso del tag C para iterar un conjunto de objetos, que en este caso est�n almacenados en una array list de Java.
            --> 
            <div class="item"><p><span>Resultado Ejemplo 2:</span> N�mero total de alumnos: ${DataGrupo.numAlumnos} alumno/s:</p></div>
            <c:forEach begin="0" step="1" items="${DataGrupo.lista}" var="item">
    			<div class="Fila"><b>Nombre:</b>&nbsp;${item.nom}<br>
    				 			  <b>Apellidos:</b>&nbsp;${item.apell}<br>
    				 			  <b>Edad:</b>&nbsp;${item.edad}<br>
    			</div>
			</c:forEach>
            <div class="item"><p style="text-align:center;"><a href="../">Volver</a></p></div>
        </div>
    </div> 
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>