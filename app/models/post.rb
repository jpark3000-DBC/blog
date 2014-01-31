class Post < ActiveRecord::Base
  has_many :listings, dependent: :destroy
  has_many :tags, :through => :listings

  validates :title, :presence => true
  validates :body, :presence => true

  before_save do |post|
    post.author = "anonymous" if post.author == ""
  end

end
