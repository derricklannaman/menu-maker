// For more information see: http://emberjs.com/guides/routing/

App.Router.reopen({
  location: 'auto',
  rootURL: '/'
})

App.Router.map(function() {
  this.resource('foods', { path: '/'}, function(){
    this.resource('food', { path: '/foods/:id' });
  })
})
