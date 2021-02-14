class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, precense: true

  has_many :teams, through: :team_users
  has_many :team_users
  has_many :posts
  has_many :comments
end
