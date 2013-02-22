class Project < ActiveRecord::Base
  attr_accessible :desc, :name
  
  has_many :categories, :dependent => :destroy
end
