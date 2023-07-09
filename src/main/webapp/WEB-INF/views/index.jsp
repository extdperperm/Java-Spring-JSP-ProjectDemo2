<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Proyect Demo 2</title>
<!-- En las vistas .jsp, se puede usar la siguiente directiva para construir las rutas a los recursos est�ticos:
		 ${pageContext.request.contextPath} 
     
     En este proyecto se ha optado por indicarlas de forma est�tica, pero si cambia en las controladoras la ubicaci�n l�gica y relativas mapeadas, podr�an producirse
     errores de acceso a los recursos (.js, .css) si no se actualizan manualmente.
-->
<link rel="stylesheet" href="./styles/index.css">

</head>
<body>
    <div class="cabecera">
        <div class="cab1"></div>
        <div class="cap2"></div>
    </div>
    <div class="cuerpo">
        <div class="panel1">
            <div class="nota"><div class="notacab1"><p>Proyecto</p></div>
                              <div class="notabody"><p style="text-align: center;"><span>#Spring Proyect Demo 2</span></p>
                            </div>
            </div>
            <div class="nota"><div class="notacab1"><p>Objetivos</p></div>
                              <div class="notabody"><p class="objetivos">- <b>F</b>amiliarizarse con el uso y gesti�n de las variables de sesi�n (memoria de usuario).</p>
                              						<p class="objetivos">- <b>C</b>onocer como se puede recorrer colecciones de objetos en las vistas (.jsp) basado en las Tags Library de JSTL.</p>   
                                                    <p class="objetivos">- <b>I</b>ntroducci�n al uso de las Spring Mvc Form Tag Library.</p>
                                                    <p class="objetivos">- <b>C</b>reaci�n y gesti�n de Cookies con Spring.</p>
                              </div>        
                            
            </div>
            <div class="nota"><div class="notacab2"><p>Entorno de Desarrollo</p></div>
                              <div class="notabody"><p><span>Ide:</span> Eclipse, versi�n: 2022-03 (4.23.0)</p>
                                                    <p><span>Servidor:</span> Apache Tomcat, versi�n: 9</p>
                                                    <p><span>Jdk:</span> OpenJdk, versi�n: 17.1</p>
                            </div>
            </div>
            <div class="nota"><div class="notacab2"><p>Estandar de Desarrollo</p></div>
                              <div class="notabody"><p><span>Gestor de proyecto:</span> Maven, versi�n: 3.8.0</p>
                                                    <p><span>Id Artefacto maven:</span> maven-archetype-webapp, versi�n: 1.4</p>
                                                    <p><span>Faceta:</span> Dynamic Web Module, versi�n: 4.0</p>
                            </div>
            </div> 
            <div class="nota"><div class="notacab2"><p>Dependencias</p></div>
                              <div class="notabody"><p><span>Spring Framework:</span> Spring, versi�n 5.3.22. M�dulos: Spring Web MVC</p>
                                                    <p><span>Javax servlet:</span> versi�n: 4.0.1</p>
                            </div>
            </div>    
            <div class="nota"><div class="notacab2"><p>Documentaci�n y Sitios de Inter�s</p></div>
                              <div class="notabody"><p><a href="https://mvnrepository.com/" target="_blank">Ir a</a> Maven Repository</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/" target="_blank">Leer</a> Documentaci�n de Spring</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/current/reference/html/web.html#mvc-view" target="_blank">Leer</a> Documentaci�n sobre Spring Views I</p>
                                                    <p><a href="https://docs.spring.io/spring-framework/docs/3.2.x/spring-framework-reference/html/view.html" target="_blank">Leer</a> Documentaci�n sobre Spring Views II</p>
                                                    <p><a href="https://www.javatpoint.com/spring-mvc-form-tag-library" target="_blank">Leer</a> Documentaci�n Spring Mvc Tags</p>
                            </div>
            </div>         
        </div>
        <div class="panel2">
            <div class="item"><p><span>Ejemplo 1 - Variables de sesi�n:</span> Formulario que env�a los datos de un alumno por m�todo POST a <b>ejemplo1</b> (controladora MainController) y lo a�ade a una lista implementada con un ArrayList en un objeto de la clase Grupo. Si es el primer alumno que se a�ade durante la sesi�n del usuario, se crea e inicializa una variable de sesi�n denominada DataAlumno. Si al a�adir un nuevo alumno, ya existe la variable de sesi�n, lo a�ade a la lista. Pruebe a introducir varios alumos. Para examinar la lista de alumnos, pruebe a ejecutar el Ejemplo 2.</p>
            				 <div><form name="ejemplo1" method="POST" action="./ejemplo1">
            						  <div><label>Nombre: </label><input type="text" name="Nombre" required/></div><!--
            					   --><div><label>Apellidos: </label><input type="text" name="Apellidos" required/></div><!--
            					   --><div><label>Edad: </label><input type="number" name="Edad" min="1" max="100" step="1" required/></div><!--
            					   --><div><input type="submit" value="A�adir" /></div>
            					  </form>
                            </div>
            </div>
            <div class="item"><p><span>Ejemplo 2 - Iteraci�n en JSTL:</span> Este ejemplo invoca a <b>./alumnos/ejemplo2</b> (controladora AlumnosController) por m�todo GET y muestra los alumnos almacenados en la variable de sesi�n DataAlumno por el Ejemplo 1. Se hace uso del Tag C de JSTL para iterar los objetos de tipo Alumno. <a href="./alumnos/ejemplo2">Ver Ejemplo</a></p></div>
            <div class="item"><p><span>Ejemplo 3 - Spring Mvc Form Tag Library:</span> Este ejemplo invoca a <b>./alumnos/ejemplo3</b> (controladora MainController) por m�todo GET y hace uso de las Spring Mvc Tags tal que puede observar como se puede precargar un formulario desde un objeto del modelo y al enviar los datos se pueden recoger con @ModelAttribute. Es decir, se puede relacionar un formulario directamente con un objeto del modelo ahorrando c�digo. <a href="./alumnos/ejemplo3">Ver Ejemplo</a></p></div>
            <div class="item"><p><span>Ejemplo 4 - Cookies - creaci�n:</span> Este ejemplo invoca a <b>./ejemplo4</b> (controladora MainController) por m�todo GET y crea una Cookie denominada Cookie1 cuya vigencia es de un d�a. Este ejemplo tambi�n es interesante para comprobar como podemos acceder a los objetos HttpServletRequest y HttpServletResponse que permiten a bajo nivel acceder y maniular la cabecera de la petici�n o respuesta de HTTP. <a href="./ejemplo4">Ver Ejemplo</a></p></div>
            <div class="item"><p><span>Ejemplo 5 - Cookies - lectura:</span> Este ejemplo invoca a <b>./ejemplo5</b> (controladora MainController) por m�todo GET y obtiene (de existir) la cookie generada en el Ejemplo 4 denominada Cookie1 y muestra el valor contenido en ella. Se sigue haciendo uso del objeto HttpServletRequest (petici�n http). <a href="./ejemplo5">Ver Ejemplo</a></p></div>
            <div class="item"><p><span>Ejemplo 6 - Cookies - modificaci�n:</span> Este ejemplo invoca a <b>./ejemplo6</b> (controladora MainController) por m�todo GET y de existir la cookie generada en el Ejemplo 4, modifica su tiempo de vida pasando a ser de 1 hora y tambi�n modifica su valor. Despu�s de creada una cookie, se puede modificar sus atributos. Se sigue haciendo uso de los objetos HttpServletRequest y HttpServletResponse (petici�n y respuesta http). <a href="./ejemplo6">Ver Ejemplo</a></p></div>
            <div class="item"><p><span>Ejemplo 7 - Cookies - eliminaci�n:</span> Este ejemplo invoca a <b>./ejemplo7</b> (controladora MainController) por m�todo GET y de existir la cookie generada en el Ejemplo 4, la elimina. Se sigue haciendo uso de los objetos HttpServletRequest y HttpServletResponse (petici�n y respuesta http). <a href="./ejemplo7">Ver Ejemplo</a></p></div>
            <div class="item"><p><span>Ejemplo 8 - Cookies - lectura con @CookieValue:</span> Este ejemplo invoca a <b>./ejemplo8</b> (controladora MainController) por m�todo GET y de existir la cookie generada en el Ejemplo 4, procede a recuperar el valor usando la java annotation de spring. La necesidad de solo lectura del valor de una cookie suele ser lo m�s frecuente y para ello spring nos ofrece la notaci�n @CookieValue. <a href="./ejemplo8">Ver Ejemplo</a></p></div>
        </div>
    </div>
    <div class="pie"><p><span>�</span> 2022 - Daniel P�rez P�rez</p></div>

</body>
</html>