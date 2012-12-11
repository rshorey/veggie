class CreateDishesMeals < ActiveRecord::Migration
  def change
    create_table :dishes_meals do |t|
      t.integer :meal_id
      t.integer :dish_id
    end
  end
end
