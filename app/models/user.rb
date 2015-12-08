class User < ActiveRecord::Base
  has_many :shows
  has_secure_password

  validates :f_name, :l_name, :username, :email_address, :password, :password_confirmation, presence: true, on: :create
  validates_uniqueness_of :username, :email_address, on: :create
  validates :f_name, :l_name, :username, :email_address, presence: true, on: :update

end
