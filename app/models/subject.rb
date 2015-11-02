class Subject < ActiveRecord::Base
  has_many :scores
  has_many :students, through: :scores

  has_and_belongs_to_many :students
  has_and_belongs_to_many :lecturers
end
