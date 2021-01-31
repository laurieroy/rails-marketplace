class User < ApplicationRecord
has_person_name
has_many :projects, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :validatable, :omniauthable, omniauth_providers: [:stripe_connect]

  def can_receive_payments? 
    uid? && provider? && access_code? && publishable_key?
  end
end
