class CreateCommonAllergensDishes < ActiveRecord::Migration
  def change
    create_table :common_allergens_dishes do |t|
      t.integer :common_allergen_id
      t.integer :dish_id
    end
  end
end
