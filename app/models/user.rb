class User < ActiveRecord::Base
  has_many :articles
  has_secure_password

  before_save {self.email = email.downcase}
  validates :username, presence: true, uniqueness: { case_senstitive: false }, length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX= /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105}, uniqueness: { case_senstitive: false },
    format: { with: VALID_EMAIL_REGEX }
end
