class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :registrable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :nome, :email, :telefone, :password, :password_confirmation, :enabled

  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end

end
