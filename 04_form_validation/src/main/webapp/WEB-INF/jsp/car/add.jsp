<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Add</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body class="container-fluid">
	<div class="page-header">
		<h1 class="text-center text-danger">Add coche</h1>
	</div>
	<center>
	<form:form method="POST" modelAttribute="car" class="form" >
		<p>
			Name:
			<input type="text" name="name" />
			<form:errors path="name" cssclass="error"></form:errors>
		</p>
		<p>
			Price:
			<input type="text" name="price" />
			<form:errors path="price" cssclass="error"></form:errors>
		</p>

		<input type="submit" / class="btn btn-info">
	</form:form>
	</center>
</body>
</html>