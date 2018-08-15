class Category < ActiveRecord::Base
    has_many :products
    has_many :users, through: :categories
    validates :name, presence: true
    TITLE = %w{ Electronics Home Garden Lifestyle }
end
