class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :text, presence: true, length: { maximum: 140 }
  belongs_to :user
  belongs_to :company
end
