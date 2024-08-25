class User < ApplicationRecord
    validates :name, :email, :city, presence: true
    validates :email, uniqueness: true

    has_many :user_professions
    has_many :professions, through: :user_professions

    has_many :user_specialties
    has_many :specialties, through: :user_specialties
end


