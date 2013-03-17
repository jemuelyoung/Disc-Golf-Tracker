class Region < ActiveRecord::Base
  attr_accessible :location, :name
  
  has_many :users
  has_many :courses
  
  validates :name, :presence => true
  validates :location, :presence => true
end
