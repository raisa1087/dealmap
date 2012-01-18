class Deal < ActiveRecord::Base
  belongs_to :category
  has_many :deal_location
  has_many :sale_detail
  validates_presence_of :title 
  validates_presence_of :deal_url
  validates_presence_of :user_id
  validates_presence_of :category_id  
end
