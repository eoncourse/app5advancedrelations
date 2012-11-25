class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :position, :wage

  has_many :assignments
  has_many :projects, :through => :assignments

  def name
    return first_name + " " + last_name
  end
end
