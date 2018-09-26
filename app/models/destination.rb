class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def most_recent_posts
    self.posts.order("created_at desc").limit(5)
  end

  def most_liked_post
    self.posts.order("likes desc").limit(1)
  end

  def average_age_of_bloggers
    total = 0
    self.bloggers.each do |blogger|
      total += blogger.age
    end
      total / (self.bloggers.length)
  end

end
