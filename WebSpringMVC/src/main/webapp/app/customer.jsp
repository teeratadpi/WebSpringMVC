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
<div class="row">
	<div class="main_container">
		<div class="col-xs-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-xs-3">
						<div class="input-group">
							<span class="input-group-addon" id="customerId">
								<span class="glyphicon glyphicon-user"></span>
							</span>
							<input type="text" class="form-control" 
								placeholder="Username" aria-describedby="basic-addon1">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon" id="customerName">
								<span class="glyphicon glyphicon-lock"></span>
							</span>
							<input type="text" class="form-control" 
								placeholder="Name" aria-describedby="basic-addon1"
								ng-model="customer.cusname">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon" id="customerAge">
								<span class="glyphicon glyphicon-heart-empty"></span>
							</span>
							<input type="text" class="form-control" 
								placeholder="Age" aria-describedby="basic-addon1"
								ng-model="customer.cusage">
						</div>
						
						<br>
						<div class="col-xs-2"></div>
						<div class="col-xs-2">
							<button type="button" ng-click="add()" class="btn btn-success">ADD</button>
						</div>
						<div class="col-xs-2"></div>
						<div class="col-xs-2">
							<button type="button" class="btn btn-danger">CLEAR</button>
						</div>
						<br>
					</div>
						
					<div class="col-xs-6">
						<button type="button" ng-click="showTable()" class="btn btn-danger">Show Data</button>
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
