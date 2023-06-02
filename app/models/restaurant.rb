class Restaurant < ApplicationRecord
    has_many :items
    validates :name, presence: true, length: { maximum: 255 }
    validates :address, presence: true, length: { maximum: 255 }
end
