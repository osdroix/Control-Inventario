<%-- 
    Document   : index
    Created on : 29/11/2021, 11:00:20 PM
    Author     : osdroix
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Backend.conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Derechos al autor y a la distribuidora Adnes
-->
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta name="expires" content="Wed, 01 Jan 1997 00:00:00 GMT">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="keywords" content="Art Sign Up Form Responsive Widget, 
              Audio and Video players, Login Form Web Template, Flat Pricing 
              Tables, Flat Drop-Downs, Sign-Up Web Templates, 
	Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone 
        Compatible Web Template, Free Web Designs for Nokia, Samsung, 
        LG, Sony Ericsson, Motorola Web Design"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
             integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <link href="/your-path-to-uicons/css/uicons-rounded-regular.css" rel="stylesheet">
  <link href="/your-path-to-uicons/css/uicons-rounded-bold.css" rel="stylesheet">
  <link href="/your-path-to-uicons/css/uicons-rounded-solid.css" rel="stylesheet">
        <script  src="JS/validacion.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/ventana.css">
        <link href="CSS/diseño.css" rel="stylesheet" type="text/css" />
	<title>
		Inventario
	</title>
</head>
    <body>
        <article>
            <div name="menu" class="caja">
                <div class="party">
                    <img src="IMG/caja.png" width="35" height="35"/>
                    <h1 class="texturas">
                        Inventario
                    </h1>
                    <div class="menu-botones">
                        <div class="party">
                            <button class="btn btn-link" id="btn-abrir-popup">
                                <img src="IMG/categoria.png" width="35" height="35"/>
                            </button>
                            <button class="btn btn-link" id="btn-abrir-popup">
                                <img src="IMG/carro.png" width="35" height="35"/>
                            </button>
                            <form action="menu.jsp" method="POST">
                               <div class="party">                
                                   <input class="form-control"  type="text" placeholder="Producto" required="required" name="producto" />
                                   <button type="submit" class="btn btn-link">
                                        <img src="IMG/buscar.png" width="30" height="30"/>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="party">
                <div>
                    
                </div>
                <div>
                    
                </div>
            </div>
        </article>
    
  <!Popups de informacio------[*w*]>
  <div class="overlay" id="overlay">
    <div class="popup" id="popup">
        <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup">cerrar<i class="fas fa-times"></i></a>
        <h6 class="texturas">Nueva Categoria</h6><hr>
        <form action="Modelador?accion=Crear-categoria"  method="POST">
            <center>      
                <div class="party">
                    <img  src="IMG/categoria.png" width="35" height="35"/>
                    <input class="form-control"  type="text" placeholder="Nombre de la Categoria" required="required" name="categoria" />
                </div>    
                    <hr>
                <button type="submit"  class="btn btn-info" name="btn">Crear Categoria</button>
            </center>
       </form>
    </div>
  </div>
  
<script src="JS/ventnas.js"></script>
    </body>
</html>

