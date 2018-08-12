class Category < ApplicationRecord
    has_many :products
    has_many :users, through: :categories
    validates :title, presence: true
    Title = %w{ Electronics Home Garden Lifestyle }
end
