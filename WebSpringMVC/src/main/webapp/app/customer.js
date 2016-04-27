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
     $scope.customer = {};
     $scope.flatTable = false;
     $http.get(appConfig + "/get/customer")
     	.success(function(data, status, headers, config) {
			$scope.customer = data;
		}).error(function(data, status, headers, config) {
			alert("Error!");
		});
     
     $scope.showTable = function(){
    	 $scope.flatTable = !$scope.flatTable;
     }
}]);

/*// Apps

var app = angular.module('app', ['ngRoute']);
app.config(function($routeProvider, $locationProvider){
	$routeProvider.
		when('/customer', {
			templateUrl: '/WEB-INF/views/customer.jsp', 
			controller: 'MainController'
		});
	// $locationProvider.html5Mode(true);
});

//Controllers

app.controller('MainController', function($scope) {
	$scope.text = "Hello World!!!!";
});*/