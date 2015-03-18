class Book < ActiveRecord::Base
  
  validates :title, :rating, presence: true
  attr_accessible :title, :rating
  
end