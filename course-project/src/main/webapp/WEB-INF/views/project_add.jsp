<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Manager</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">	
		<div class="row">
			<spring:url value="/project/add" var="formUrl"/>
			<form:form modelAttribute="project" action="${formUrl }" method="post" cssClass="col-md-8 col-md-offset-2">
			
				<div class="form-group">
					<label for="project-name">Nombre del Servicio</label>
					<form:input id="project-name" 
							cssClass="form-control" path="name"/>
					<form:errors path="name"/>
				</div>

				<div class="form-group">
					<label for="special">Activo</label>
					<form:checkbox id="special" path="special"/>
				</div>
				
				<div class="form-group">
					<label for="project-type">Tipo de Servicio</label>
					<form:select path="type" cssClass="selectpicker" items="${types}"></form:select>
				</div>
				
				<div class="form-group">
					<label for="sponsor-name">Compañia Asociadas</label>
					<form:input id="sponsor-name" 
							cssClass="form-control" path="sponsor.name"/>
				</div>

				<div class="form-group">
					<label for="sponsor-phone">Compañia Asociadas</label>
					<form:input id="sponsor-phone" 
							cssClass="form-control" path="sponsor.phone"/>
				</div>

				<div class="form-group">
					<label for="sponsor-email">Compañia Asociadas</label>
					<form:input id="sponsor-email" 
							cssClass="form-control" path="sponsor.email"/>
				</div>
			
				<div class="form-group">
					<label for="funds">Autorizado por</label>
					<form:input id="funds"
						cssClass="form-control" path="authorizedFunds"/>
				</div>
			
				<div class="form-group">
					<label for="hours">Fecha de Inicio</label>
					<form:input id="hours"
						cssClass="form-control" path="authorizedHours"/>
				</div>

				<div class="form-group">
					<label for="startDate">Fecha Fin</label>
					<form:input id="startDate"
						cssClass="form-control" path="startDate"/>
				</div>
							
				<div class="form-group">
					<label for="project-name">Descripcion</label>
					<form:textarea cssClass="form-control" path="description" rows="3"></form:textarea>
					<form:errors path="description"/>
				</div>
				
				<div class="form-group">
					<label for="poc">Otros Datos</label>
					<form:input id="poc" 
							cssClass="form-control" path="pointsOfContact[0]"/>
				</div>

				<div class="form-group">
					<label for="poc2">Otros Datos</label>
					<form:input id="poc2" 
							cssClass="form-control" path="pointsOfContact[1]"/>
				</div>

				<div class="form-group">
					<label for="poc3">Otros Datos</label>
					<form:input id="poc3" 
							cssClass="form-control" path="pointsOfContact[2]"/>
				</div>
				
				
			
				<button type="submit" class="btn btn-default">Agregar Nuevo Servicio</button>
	
			</form:form>
			
		</div>
	</div>
</body>
</html>