class User < ApplicationRecord
  validates_presence_of :full_name
  validates_presence_of :email
  validates_presence_of :password


  def self.authenticate(email, password)
    where(email: email, password: password).first
    # binding.pry
  end
end
