class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :main_part
      t.string :label
      t.text :intro
      t.string :posted_by
      t.timestamps null: false
    end
  end
end
