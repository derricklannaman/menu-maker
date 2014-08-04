App.FoodsRoute = Ember.Route.extend({
  model: function() { return this.store.find('food') }
  model: function(params) { return this.store.find('food', params.id)}

})