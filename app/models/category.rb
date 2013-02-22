class Category < ActiveRecord::Base
  attr_accessible :desc, :name ,:parent,:parent_id
  has_ancestry
  belongs_to :project
end
