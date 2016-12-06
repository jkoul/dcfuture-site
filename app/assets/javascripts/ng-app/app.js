'use strict';

(function() {
  angular
  .module('dcfuture', [
    'ngAnimate',
    'ui.router',
    'ngResource',
    'templates',
    'ui.bootstrap'
    // 'checklist-model'

    // in-app dependencies
    // 'blog',
    // 'legitrack'
  ])

  .config([
    "$stateProvider",
    "$urlRouterProvider",
    "$locationProvider",
    routerFunction
  ])


  function routerFunction($stateProvider, $urlRouterProvider, $locationProvider){
    $urlRouterProvider.otherwise('/');
    $locationProvider.html5Mode(true);
    $stateProvider

    .state("index", {
      url: '/',
      templateUrl: "home/index.html",
      controllerAs: 'HomeCtrl'
    })

    .state("about", {
      url: '/about',
      templateUrl: 'home/about.html'
    })
  }
})();
