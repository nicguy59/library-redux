class Item < ActiveRecord::Base
   belongs_to :item_type
   validates :title, presence: true

  def completed?
    !completed_on.nil?
  end

  def get_image
    puts "Get an Image!"
    update_attribute(:image_url, ImageFetcher.new.fetch(title))
  end
end
