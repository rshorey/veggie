class Meal < ActiveRecord::Base
  has_and_belongs_to_many :dishes
  validates_presence_of :name, :street_address, :city, :state, :zip_code
  validates_uniqueness_of :date, :message => "Only one meal is allowed on a given day. Please select a different date."
  attr_accessible :name, :description, :street_address, :city, :state, :pets, :notes, :date, :time, :zip_code
end
