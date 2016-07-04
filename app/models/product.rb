class Product < ActiveRecord::Base
  belongs_to :products
  has_many :comments
end
