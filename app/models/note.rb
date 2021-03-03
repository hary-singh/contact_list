class Note < ApplicationRecord
  belongs_to :contact
  has_many :comments

  validates :body, presence: true
end
