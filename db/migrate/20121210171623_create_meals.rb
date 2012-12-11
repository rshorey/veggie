class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.text :pets
      t.text :notes
      t.date :date
      t.time :time
      t.timestamps
    end
  end
end
