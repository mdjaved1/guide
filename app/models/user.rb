class User < ActiveRecord::Base
  has_one :profile
  acts_as_messageable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  enum role: [ :standard, :guide ]    
end
