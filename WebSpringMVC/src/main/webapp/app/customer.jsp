<!DOCTYPE html>
<html ng-app="ProjectSpringMVC" ng-controller="MainController">

<head>

	<!-- Bootstrap core CSS -->
	<link href="resources/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	
	<!-- Angular -->
	<script src="resources/js/angular/angular.js"></script>
	<script src="resources/js/angular/angular-route.js"></script>
	<script src="resources/js/angular/quick-ng-repeat.js"></script>
</head>

<body>
	<div class="main_container">
		<div class="col-xs-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-xs-3">
					</div>
						
					<div class="col-xs-6">
					
						<button type="button" ng-click="showTable()" class="btn btn-danger">Show Table</button>
						<br>
						<br>
						
						<div class="panel panel-danger" ng-show="flatTable">
							<!-- Default panel contents -->
							<div class="panel-heading">Customer List</div>
								<!-- Table -->
								<table class="table">
									<tr>
										<th>ID</th>
										<th>NAME</th>
										<th>AGE</th>
									</tr>
									<tr ng-repeat="customers in customer">
										<td>{{customers.id}}</td>
										<td>{{customers.name}}</td>
										<td>{{customers.age}}</td>
									</tr>
								</table>
						</div>
					</div>
					
					<div class="col-xs-3">
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap core JavaScript -->
	<script src="resources/plugin/assets/js/jquery.min.js" /></script>
	<script src="resources/plugin/assets/js/jquery.form.min.js" /></script>
	<script src="resources/plugin/bootstrap/js/bootstrap.min.js" /></script>
	<!-- Java Script -->
	<script src="app/config.js"></script>
	<script src="app/customer.js"></script>
</body>

</html>
