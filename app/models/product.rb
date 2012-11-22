class Product < ActiveRecord::Base
  validates :title , :price , :stock_quantity, :presence => true
  
end
