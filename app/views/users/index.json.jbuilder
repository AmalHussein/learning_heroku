json.array!(@users) do |user|
  json.extract! user, :string, :integer, :string
  json.url user_url(user, format: :json)
end
