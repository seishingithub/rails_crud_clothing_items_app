class CreateClothingItems < ActiveRecord::Migration
  def change
    create_table :clothing_items do |t|
      t.string :clothing_type
      t.string :clothing_material
      t.string :clothing_color
    end
  end
end