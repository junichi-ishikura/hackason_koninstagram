json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :factory_id, :appoint_date, :user_id, :customize_id
  json.url appointment_url(appointment, format: :json)
end
