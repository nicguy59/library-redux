class ItemType < ActiveRecord::Base
  has_many :items, dependent: :nullify
  validates :name, presence: true
 
end
