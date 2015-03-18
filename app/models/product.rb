class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price,  numericality: {only_integer: true}, allow_blank: true
  has_many :reviews, dependent: :destroy
end