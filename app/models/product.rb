class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: {only_integer: true}
end