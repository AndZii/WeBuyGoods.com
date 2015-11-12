class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :price
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4

      t.timestamps null: false
    end
  end
end
