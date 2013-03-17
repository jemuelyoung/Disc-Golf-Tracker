class User < ActiveRecord::Base
  attr_accessible :email, :name, :region, :region_id, :courses
  
  belongs_to :region
  has_and_belongs_to_many :courses, :join_table => "course_map"
    
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }, :presence => true
  validates :name, :presence => true
  validates :region_id, :presence => true
 
  
  
end

