class Subscription < ApplicationRecord
  has_many :user_subscriptions, dependent: :destroy
  has_many users, through: :user_subscriptions
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :billing_interval, presence: true
  validates :description_limit, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
