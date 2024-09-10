class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, dependent: :destroy
  has_many :generated_descriptions, dependent: :destroy
  has_many :user_subscriptions, dependent: :destroy
  has_many :subscriptions, through: :user_subscriptions
  validates :first_name, presence: true
  validates :last_name, presence: true
end
