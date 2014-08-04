namespace :db do

  task populate: :environment do

    Food.destroy_all

    def random_portions
      (1..16).to_a.sample
    end

    def random_calories
      cal_range = (50..400).to_a.shuffle.sample
    end

    def get_meal_type
      %w( Breakfast Lunch Dinner ).sample
    end

    20.times do
      Food.create(
        name: Faker::BaconIpsum.word,
        portion: random_portions,
        calories: random_calories,
        meal_type: get_meal_type,
        notes: Faker::HipsterIpsum.words(10).join(' ')
        )

    end
  end

end