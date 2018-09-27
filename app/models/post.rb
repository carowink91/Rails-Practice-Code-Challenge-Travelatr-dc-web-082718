class Post < ApplicationRecord
  belongs_to :blogger
  belongs_to :destination
  validates :title, presence: true
  validates :content, length: {minimum: 100}

  # def destination_name=(name)
  #   self.destination = Destination.find_or_create_by(name: name)
  # end
  #
  # def destination_name
  #   self.destination.name
  # end
end
