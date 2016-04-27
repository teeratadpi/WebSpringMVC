'use strict';

//Declare app level module which depends on views, and components
angular.module('ProjectSpringMVC', ['ngRoute'])
.config(['$routeProvider','$httpProvider', function($routeProvider,$httpProvider) {
 $routeProvider.otherwise({redirectTo: '/index'});/*
 $httpProvider.defaults.useXDomain = true;
 $httpProvider.defaults.withCredentials = true;
 delete $httpProvider.defaults.headers.common['X-Requested-With'];*/
}])
.controller('MainController', ['$http','$location','$rootScope', '$scope',function($http, $location, $rootScope, $scope) {
	$scope.text = 'boy';
	$scope.customers = {};
	$scope.flatTable = false;
	$scope.customer = {};

	$http.get(appConfig + "/get/customer")
		.success(function(data, status, headers, config) {
			$scope.customers = data;
		}).error(function(data, status, headers, config) {
			alert("Error!");
	});
     
	$scope.addData = function(){
		$http.post(appConfig + "/add/customer", $scope.customer)
		.success(function(data, status, headers, config) {
			$scope.customer = data;
			alert("Success : create new customer complete");
			window.location.reload();
		}).error(function(data, status, headers, config) {
			alert("Error!");
		});
	}
	
	$scope.confirmDelete = function(){
		$("#myModal").modal()
	}
	
	$scope.deleteData = function(){
		alert("Delete!");
		/*$http.post(appConfig + "/delete/customer" + $scope.customer.id)
		.success(function(data, status, headers, config) {
			$scope.customer = data;
			alert("Success : delete customer complete");
			window.location.reload();
		}).error(function(data, status, headers, config) {
			alert("Error!");
		});*/
	}
     
	$scope.showTable = function(){
    	$scope.flatTable = !$scope.flatTable;
	}
}]);