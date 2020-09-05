class User < ApplicationRecord

    has_many :signups
    has_many :favorites
    has_many :places, through: :signups #, :favorites
    has_many :places, through: :favorites

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :my_email_attribute, email: true #check how to validate email
    
end
