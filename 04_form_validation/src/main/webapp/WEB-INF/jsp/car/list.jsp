<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
	<title>Listado de coches</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body class="container-fluid">
	<div class="page-header">
		<h1 class="text-center text-danger">Inventario</h1>
	</div>
	<c:choose>
	    <c:when test="${empty carList}">
	       <h3 class="text-center text-muted">Ahora mismo no tienes coches</h3>
	       <center><button class="btn btn-info" onclick="location.href='/car/add'">Add</button></center>
	    </c:when>
	    <c:otherwise>
	    	<h2 class="text-muted">Listado de coches</h2><br>
	    	<table class="table">
	    		<tr>
	    			<th>ID</th>
	    			<th>Nombre</th>
	    			<th>Precio</th>
	    			<th>Menu</th>
	    		</tr>
		        <c:forEach items="${carList}" var="car">
					<tr>
						<td>${car.id}</td>
						<td>${car.name}</td>
						<td>${car.price}</td>
						<td>
							<button class="btn btn-info" onclick="location.href='/car/show/${car.id}'">Mostrar</button>
							<button class="btn btn-info" onclick="location.href='/car/edit/${car.id}'">Editar</button>
							<button class="btn btn-danger" onclick="location.href='/car/eliminar/${car.id}'">Eliminar</button>
						</td>
					</tr>
				</c:forEach>
			</table><br>
			<button class="btn btn-warning" onclick="location.href='/car/add'">Add</button>
	    </c:otherwise>
	</c:choose>
	
</body>
</html>