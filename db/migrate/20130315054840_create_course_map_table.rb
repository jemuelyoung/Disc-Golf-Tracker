class CreateCourseMapTable < ActiveRecord::Migration
  def change
    create_table :course_map, :id => false do |t|
      t.references :course
      t.references :user
    end
  end
end
