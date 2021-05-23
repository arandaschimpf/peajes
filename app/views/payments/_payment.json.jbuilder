json.extract! payment, :id, :booth_id, :user_id, :price_id, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
