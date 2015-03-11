class Item < ActiveRecord::Base
    belongs_to :item_type
 
    validates :title, presence: true, length: { minimum: 2}

  def completed?
    !completed_on.nil?
  end

  def item_type_name
    if item_type
      item_type.name
    else
      'No item type'
    end  
  end

  def get_image
    logger.debug "Get an Image!"
    update_attribute(:image_url, ImageFetcher.new.fetch(title))
  end
end
