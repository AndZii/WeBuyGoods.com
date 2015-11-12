class Item < ActiveRecord::Base
  mount_uploader :image_1, PostImageUploader
  mount_uploader :image_2, PostImageUploader
  mount_uploader :image_3, PostImageUploader
  mount_uploader :image_4, PostImageUploader
end
