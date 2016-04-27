<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html ng-app="app">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Home</title>
	
	<!-- Bootstrap core CSS -->
	<%-- <link href="<c:url value="/resources/bootstrap/css/bootstrap.css" />" rel="stylesheet"> --%>
	<link href="resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<!-- script data-require="angular.js@*" data-semver="1.3.5" src="https://code.angularjs.org/1.3.5/angular.js"></script>
    <script data-require="angular-route@*" data-semver="1.3.5" src="https://code.angularjs.org/1.3.5/angular-route.js"></script> -->
</head>

<body>
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">Customer List</div>

				<!-- Table -->
				<table class="table">
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>AGE</th>
					</tr>
					<tr>
						<td>${customer.id}</td>
						<td>${customer.name}</td>
						<c:set var="age" value="${customer.age}"/>
						<c:choose>
						    <c:when test="${age=='0'}">
						        <td>Male</td>
						    </c:when>    
						    <c:otherwise>
						        <td>FeMale</td>
						    </c:otherwise>
						</c:choose>
					</tr>
				</table>
			</div>
			<P>The time on the server is ${serverTime}.</P>
			<P>ID is ${customer.id}.</P>
			<P>Name is ${customer.name}.</P>
			<P>Age is ${customer.age}.</P>
		</div>
	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="/resources/assets/js/jquery.min.js" /></script>
	<script src="/resources/assets/js/jquery.form.min.js" /></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js" /></script>
	
	
    <script src="customer.js"></script>
</body>
</html>