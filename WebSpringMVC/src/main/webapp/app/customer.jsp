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
						<form ng-submit="form.$valid">
						<div class="input-group">
							<span class="input-group-addon" id="customerId">
								<span class="glyphicon glyphicon-user"></span>
							</span>
							<input type="text" class="form-control" name="id"
								placeholder="Username" aria-describedby="basic-addon1"
								ng-model="customer.id">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon" id="customerName">
								<span class="glyphicon glyphicon-lock"></span>
							</span>
							<input type="text" class="form-control" name="Name"
								placeholder="Name" aria-describedby="basic-addon1"
								ng-model="customer.name">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon" id="customerAge">
								<span class="glyphicon glyphicon-heart-empty"></span>
							</span>
							<input type="text" class="form-control" name="Age"
								placeholder="Age" aria-describedby="basic-addon1"
								ng-model="customer.age">
						</div>
						<br>
						<div id="validateInput" class="alert alert-danger" ng-show="validate">
							<strong>Validate!</strong> Please Input Value....
						</div>
						
						<div class="col-xs-2"></div>
						<div class="col-xs-2">
							<button type="button" ng-click="addData()" class="btn btn-success">ADD</button>
						</div>
						<div class="col-xs-2"></div>
						<div class="col-xs-2">
							<button type="button" ng-click="confirmDelete()" class="btn btn-danger">DELETE</button>
						</div>
						<br>
						</form>
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
									<tr ng-repeat="customers in customers">
										<td>{{customers.id}}</td>
										<td>{{customers.name}}</td>
										<td>{{customers.age}}</td>
									</tr>
								</table>
						</div>
						
						<!-- Modal -->
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">WARINING</h4>
										</div>
										<div class="modal-body">
											<p>DO YOU WANT TO DELETE ?.</p>
										</div>
										<div class="modal-footer">
											<button class="btn btn-success" type="button" ng-click="deleteData()"
												data-dismiss="modal">Confirm</button>
											<button class="btn btn-danger" type="button"
												data-dismiss="modal">Cancel</button>
										</div>
									</div>

								</div>
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
