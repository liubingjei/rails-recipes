class User < ApplicationRecord

  has_one :profile
  accepts_nested_attributes_for :profile

  has_many :memberships
  has_many :groups, :through => :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def display_name
    self.email.split("@").first
  end

end
