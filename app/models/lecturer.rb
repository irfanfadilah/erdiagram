class Lecturer < ActiveRecord::Base
  belongs_to :classroom
  has_and_belongs_to_many :subjects
end
