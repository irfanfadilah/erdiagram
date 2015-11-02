class CreateClassroomsStudents < ActiveRecord::Migration
  def change
    create_table :classrooms_students do |t|
      t.references :classroom, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
    end
  end
end
