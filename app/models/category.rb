class Category < ActiveRecord::Base
  validates_length_of :category_name, :within => 1..20
  validates_uniqueness_of :category_name, :message => "already exists"
end
