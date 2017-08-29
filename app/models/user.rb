class User < ActiveRecord::Base
  has_one :profile
  acts_as_messageable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def name
    return "You should add method :name in your Messageable model"
  end
  enum role: [ :standard, :guide ]    
end
