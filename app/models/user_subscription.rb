class UserSubscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
  validates :start_date, presence: true
  validates :subscription_id, presence: true
  validates :end_date, comparison: { greater_than: :start_date }, allow_nil: true
  validates :status, presence: true
end
