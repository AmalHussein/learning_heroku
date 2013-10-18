json.array!(@users) do |user|
  json.extract! user, :name, :address, :age
  json.url user_url(user, format: :json)
end
