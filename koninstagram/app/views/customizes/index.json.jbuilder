json.array!(@customizes) do |customize|
  json.extract! customize, :id, :color, :material, :waku, :user_id
  json.url customize_url(customize, format: :json)
end
