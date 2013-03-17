class AddRegionIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :region_id, :integer
  end
end
