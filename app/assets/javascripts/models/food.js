App.Food = DS.Model.extend({
  name: DS.attr('string'),
  portion: DS.attr('number'),
  calories: DS.attr('number'),
  mealType: DS.attr('string'),
  notes: DS.attr('string'),

  foodAndType: function() {
    return this.get('name') + ': ' + this.get('mealType')
  }.property('name', 'mealType')
})

