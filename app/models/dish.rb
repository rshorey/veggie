class Dish < ActiveRecord::Base
  has_and_belongs_to_many :common_allergens
  has_and_belongs_to_many :meals
  validates_presence_of :name
  validates_presence_of :description
  attr_accessible :name, :description, :common_allergen_ids, :common_allergens
  
  def contains_allergen?(allergen)
    if self.common_allergens.include?(allergen)
      return true
    else
      return false
    end
  end
end
