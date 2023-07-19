class Professional < ApplicationRecord
  #Associations
  has_one_attached :resume
  has_many :applications, counter_cache: true
  has_many :follows, counter_cache: true
  #Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: true,  format: { with: VALID_EMAIL_REGEX }
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password
end 