class Category < ActiveRecord::Base
  attr_accessible :desc, :name ,:parent
  has_ancestry
end
