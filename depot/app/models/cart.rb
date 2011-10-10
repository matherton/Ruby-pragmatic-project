#--- MA this was not created by rails generate I manually added the file from a copy in download folder
# A cart has many line items associated with it and :dependant => :destroy means line item is dependant on existence of a cart 
class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
end
