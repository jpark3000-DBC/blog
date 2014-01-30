class Tag < ActiveRecord::Base
  has_many :listings
  has_many :posts, :through => :listings
end
