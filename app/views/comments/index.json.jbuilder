json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment, :picture_id
  json.url comment_url(comment, format: :json)
end
