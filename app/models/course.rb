class Course < ActiveRecord::Base
  attr_accessible :name, :region_id
  has_one :region
  has_and_belongs_to_many :users, :join_table => "course_map"
  
   validates :name, :presence => true
   validates :region_id, :presence => true
end


