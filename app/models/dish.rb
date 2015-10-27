class Dish < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :days_meals
  belongs_to :provider
end
