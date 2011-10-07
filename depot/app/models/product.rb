# default_scope :order => 'title' orders - ensures products are displayed in alphabetically order
# Default scopes apply to all queries that start with this e.g. Product model
class Product < ActiveRecord::Base
  default_scope :order => 'title'
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
end