class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :company_name, :presence => true, uniqueness: { case_sensitive: false }
  validates :first_name, :presence => true
  validates :last_name, :presence => true
end
