json.extract! user, :id, :full_name, :password, :string, :created_at, :updated_at
json.url user_url(user, format: :json)
