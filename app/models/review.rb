class Review < ActiveRecord::Base
  attr_accessible :body, :product_id, :upvotes
  belongs_to :product
  
  after_initialize :defaults
  
  def defaults
    self.upvotes ||= 0
  end
end
