json.array!(@spots) do |spot|
  json.extract! spot, :name, :address, :phone, :price, :speed, :outlets, :review
  json.url spot_url(spot, format: :json)
end