class Tag < ActiveRecord::Base
  has_many :listings
  has_many :posts, :through => :listings

  # validates :tag, uniqueness: true
  validates :tag, presence: true
end
