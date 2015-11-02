class CreateLecturersSubjects < ActiveRecord::Migration
  def change
    create_table :lecturers_subjects do |t|
      t.references :lecturer, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
    end
  end
end
