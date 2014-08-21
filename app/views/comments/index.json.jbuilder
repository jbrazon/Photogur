json.array!(@comments) do |comment|
  json.extract! comment, :id, :entry, :picture_id
  json.url comment_url(entry, format: :json)
end
