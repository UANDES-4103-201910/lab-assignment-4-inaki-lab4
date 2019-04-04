class User < ApplicationRecord
  has_many :orders
  validates :email, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Invalid Email address"}
  validates :phone_number, length: { in: 8..12}, numericaly: { only_integers: true}
  validates :password, length: { in: 9..12}
end
