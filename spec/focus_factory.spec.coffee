
describe 'focus factory', ->

  it 'sends the focusOn event on the root scope', (done) ->

    module 'focusOn', ($provide) ->
      $provide.value '$rootScope', $broadcast: (event, name) ->
        expect(event).to.equal 'focusOn'
        expect(name).to.equal 'test'
        done()
      null

    inject (focus, $timeout) ->
      focus 'test'
      $timeout.flush()
