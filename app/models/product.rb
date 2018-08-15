class Product < ActiveRecord::Base
    has_many :orders
    belongs_to :category
    validates :name, :price, presence: true
    mount_uploader :image, ImageUploader
end
