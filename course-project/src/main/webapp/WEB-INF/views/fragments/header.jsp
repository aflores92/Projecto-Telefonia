<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<nav class="navbar navbar-default">
		<div class="container-fluid">
		
			<div class="navbar-header">
      			<a class="navbar-brand" href="#">Proyecto Telefonía</a>
    		</div>
    		
    		<ul class="nav navbar-nav">
    		
    			<li><a href="#">Inicio</a></li>
    		
    			<li class="dropdown">
          			
          			<a href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Servicio <span class="caret"></span></a>
          	
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="<spring:url value="/project/add"/>">Agregar</a></li>
            			<li><a href="<spring:url value="/project/find"/>">Buscar</a></li>
          			</ul>
          			
        		</li>
        		
    			<li class="dropdown">
          		
          			<a href="#" class="dropdown-toggle" 
          				data-toggle="dropdown" role="button" 
          				aria-expanded="false">Especificaciones del Recurso <span class="caret"></span></a>
          		
          			<ul class="dropdown-menu" role="menu">
            			<li><a href="<spring:url value="/resource/add"/>">Agregar Detalle</a></li>
            			<li><a href="<spring:url value="/resource/find"/>">Buscar Detalle</a></li>
          			</ul>
        		
        		</li>
				<li>${currentDate}</li>        		
    		</ul>
    		
		</div>
</nav>