json.array!(@posts) do |post|
  json.extract! post, :id, :CodeName, :CEO, :Story
  json.url post_url(post, format: :json)
end
