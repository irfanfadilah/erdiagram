class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.string :name
      t.text :address
      t.string :gender
      t.float :salary
      t.references :classroom, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
