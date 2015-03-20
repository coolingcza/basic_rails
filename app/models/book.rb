class Book < ActiveRecord::Base
  
  belongs_to :publisher
  
  validates :title, :rating, :publisher_id, presence: true
  attr_accessible :title, :rating, :publisher_id
  
end