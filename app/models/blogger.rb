class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, uniqueness: true
  validates :age, numericality: {greater_than: 0}
  validates :bio, length: {minimum: 30}

  def total_likes
    total = 0
    self.posts.each do |post|
      total += post.likes
    end
    total
  end

  def most_liked_post
    self.posts.order("likes desc").limit(1)
  end


end
