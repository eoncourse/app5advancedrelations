class Project < ActiveRecord::Base
  attr_accessible :budget, :description, :name

  has_many :assignments
  has_many :users, :through => :assignments
end
