class User < ApplicationRecord
  validates_presence_of :full_name
  validates_presence_of :email
  validates_presence_of :password
end
