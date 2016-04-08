json.array!(@it_assets) do |it_asset|
  json.extract! it_asset, :id, :category, :name, :need_id
  json.url it_asset_url(it_asset, format: :json)
end
