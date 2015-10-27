class Person < ActiveRecord::Base
  validates :name, presence: true
  validates :room, presence: true
  validates :internal_phone, presence: true
end
