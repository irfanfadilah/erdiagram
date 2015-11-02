class Student < ActiveRecord::Base
  has_many :scores
  has_many :subjects, through: :scores

  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :classrooms
end
