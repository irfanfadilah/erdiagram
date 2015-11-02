class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.string :gender
      t.integer :year

      t.timestamps null: false
    end
  end
end
