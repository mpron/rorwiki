json.array!(@wikis) do |wiki|
  json.extract! wiki, :id, :name, :has_many
  json.url wiki_url(wiki, format: :json)
end
