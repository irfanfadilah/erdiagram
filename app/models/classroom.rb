class Classroom < ActiveRecord::Base
  belongs_to :department
  has_one :lecturer
  has_and_belongs_to_many :students
end
