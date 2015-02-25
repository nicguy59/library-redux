class ItemType < ActiveRecord::Base
  has_many :items, dependent: :nulify
  validates :name, presence: true
 
end
