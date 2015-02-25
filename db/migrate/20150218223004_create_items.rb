class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_type
      t.string :title
      t.text :body
      t.string :image_url
      t.date :completed_on, default: nil
      
      t.timestamps null: false
    end

  end
end
