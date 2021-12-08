json.extract! foodsupplement, :id, :name, :price, :category, :rating, :articlenum, :created_at, :updated_at
json.url foodsupplement_url(foodsupplement, format: :json)
