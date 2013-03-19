class Region < ActiveRecord::Base
  attr_accessible :location, :name
  
  has_many :users, :dependent => :nullify
  has_many :courses, :dependent => :nullify
  
  validates :name, :presence => true
  validates :location, :presence => true
end
