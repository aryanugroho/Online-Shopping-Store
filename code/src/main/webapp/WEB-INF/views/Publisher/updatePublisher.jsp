<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page session="false" %>
<html>
<head>
	<title>Welcome | Online Book Store</title>
</head>
<body>

<section class="container">
	<form:form modelAttribute="publisher" class= "form-horizontal">
	<fieldset>
		<legend>Update Publisher</legend>
			

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for= "name">Name</label>
					<div class="col-lg-4">
						<form:input id="name" path="name" type= "text" class="form-control" value = "${publisher.name}"/>
					</div>
			</div>
					
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for= "email">Email</label>
					<div class="col-lg-4">
						<form:input id="email" path="email" type= "text" class="form-control" value = "${publisher.email}"/>
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for= "phone">Phone</label>
					<div class="col-lg-4">
						<form:input id="phone" path="phone" type= "text" class="form-control col-md-4" value = "${publisher.phone}"/>
					</div>
			</div>
			<div class="form-group" action="${pageContext.request.contextPath}/publisher/update/${publisher.id}" method="post">
				<div class="col-lg-offset-2 col-lg-10">
					<input type="submit" id="btnAdd" class= "btn btn-primary" value ="Update"/>
				</div>
			</div>


	</fieldset>
	</form:form>
</section>
</body>
</html>
