json.array!(@posts) do |post|
  json.extract! post, :id, :title, :main_part, :label, :intro
  json.url post_url(post, format: :json)
end
