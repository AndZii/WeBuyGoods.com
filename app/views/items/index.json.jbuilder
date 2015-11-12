json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :price, :image_1, :image_2, :image_3, :image_4
  json.url item_url(item, format: :json)
end
