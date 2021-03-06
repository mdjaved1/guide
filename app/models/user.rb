class User < ActiveRecord::Base
  has_one :profile
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

  enum role: [ :standard, :guide ]    
end
