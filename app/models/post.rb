class Post < ApplicationRecord
  include Sluggable 

  validates :title, :content, presence: true
end