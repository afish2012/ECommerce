json.extract! prodcut, :id, :name, :price, :quantity, :description, :brand, :rating, :category_id, :created_at, :updated_at
json.url prodcut_url(prodcut, format: :json)
