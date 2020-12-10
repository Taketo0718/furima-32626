class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :lastname_zenkaku, presence: true
  validates :firstname_zenkaku, presence: true
  validates :lastname_katakana, presence: true
  validates :firstname_katakana, presence: true
  validates :birth_date, presence: true
end
