class Pizza < ApplicationRecord
    validates :name, presence: true
    validates :rate, presence: true
end
