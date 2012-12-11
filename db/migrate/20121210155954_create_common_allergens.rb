class CreateCommonAllergens < ActiveRecord::Migration
  def change
    create_table :common_allergens do |t|
      t.string :name
      t.timestamps
    end
  end
end
