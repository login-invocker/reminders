json.extract! customer, :id, :fulll_name, :avatar_url, :created_at, :updated_at
json.url customer_url(customer, format: :json)
