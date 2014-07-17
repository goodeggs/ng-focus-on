# ng-focus-on

An [angularjs](http://angularjs.org/) directive and corresponding factory to make elements focusable. It's easy!

```html
<div ng-controller="AwesomeCtrl">
  <a href="#" ng-click="focusAwesome($event)">Focus on something awesome</a>
  <input focus-on="awesome">
</div>
```

```javascript
angular.module('yourModule', [
  ...

  'focusOn',
  ...
]);


...


function AwesomeCtrl($scope, focus) {
  $scope.focusAwesome = function($event) {
    $event.preventDefault();
    focus('awesome');
  };
}
```

## Installing

- **Bower**: `bower install ng-focus-on`
- **[npm/browserify](http://browserify.org/)**: `npm install ng-focus-on`
- **Download**: https://github.com/goodeggs/ng-focus-on/releases/latest

## Credit

Thanks to this answer from [blesh](http://stackoverflow.com/users/135786/blesh) on StackOverflow for inspiration: http://stackoverflow.com/a/18295416/298584

## Contributing

```bash
npm install
npm test
```

## License

MIT.
