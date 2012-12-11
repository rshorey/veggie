class CommonAllergen < ActiveRecord::Base
  has_and_belongs_to_many :dishes
  validates_presence_of :name
  attr_accessible :name, :dish_ids, :dishes
end
