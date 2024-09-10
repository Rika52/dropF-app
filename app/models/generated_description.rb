class GeneratedDescription < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :description, presence: true
end
