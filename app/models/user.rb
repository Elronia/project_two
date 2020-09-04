class User < ApplicationRecord

    has_many :signups
    has_many :favorites
    has_many :places, through: :signups, :favorites
    # has_many :places, through: :favorites

end
