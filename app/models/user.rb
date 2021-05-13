class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  has_many :likes
  has_many :friends
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
