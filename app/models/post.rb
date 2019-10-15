class Post < ApplicationRecord
  belongs_to :aviary
  validates :body, presence: true, uniqueness: true
end
