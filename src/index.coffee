app = angular.module 'focusOn', []

app.directive 'focusOn', ->
  (scope, elem, attr) ->
    scope.$on 'focusOn', (e, name) ->
      elem[0].select() if name is attr.focusOn

app.factory 'focus', ($rootScope, $timeout) ->
  (name) -> $timeout -> $rootScope.$broadcast 'focusOn', name
