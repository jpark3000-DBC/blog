class Post < ActiveRecord::Base
  has_many :listings
  has_many :tags, :through => :listings

  validates :title, :presence => true
  validates :body, :presence => true
end
