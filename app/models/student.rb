class Student < ActiveRecord::Base
  has_one :education

  validates :name, :email, :gender, :contact, :birth_date, :address, :city, :state, :pincode, presence: true
  validates :name,:father_name,:mother_name, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :contact, length: { is: 10 }
end
