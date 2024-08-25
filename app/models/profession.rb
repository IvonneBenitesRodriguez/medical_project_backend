class Profession < ApplicationRecord
    
    validates :name, presence:true

    has_many :user_professions
    has_many :users, through: :user_professions
end

