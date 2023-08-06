class Category < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :category_items, dependent: :destroy
  has_many :items, through: :category_items
end
