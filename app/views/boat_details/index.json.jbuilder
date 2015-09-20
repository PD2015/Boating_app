json.array!(@boat_details) do |boat_detail|
  json.extract! boat_detail, :id, :boat_make, :boat_manufacturing_code, :boat_model, :boat_color
  json.url boat_detail_url(boat_detail, format: :json)
end
