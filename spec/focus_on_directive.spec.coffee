describe 'focusOn directive', ->
  {$compile, $rootScope} = {}

  beforeEach ->
    module 'focusOn'
    inject (_$compile_, _$rootScope_) ->
      $compile = _$compile_
      $rootScope = _$rootScope_
      null

  it 'listens for focusOn events on the root scope and focuses the element', (done) ->
    element = $compile('<input focus-on="test">')($rootScope)
    element[0].focus = ->
      done()
    $rootScope.$broadcast 'focusOn', 'test'
