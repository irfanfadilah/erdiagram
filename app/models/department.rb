class Department < ActiveRecord::Base
  has_many :classrooms
end
