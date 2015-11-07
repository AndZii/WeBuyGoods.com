class AddFeaturedBoolColumn < ActiveRecord::Migration
  def change
    add_column :posts, :featured, :bool
  end
end
