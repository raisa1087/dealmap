class User < ActiveRecord::Base
  belongs_to :user_type
  has_many :deal
  has_many :sale
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :company_name  
  validates_presence_of :user_type_id
end
