class Tag < ApplicationRecord
  has_many product_tags, dependent: :destroy
  has_many :products, through: :product_tags
  validates :last_name, presence: true, uniqueness: true
end
