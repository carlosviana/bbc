json.array!(@clients) do |client|
  json.extract! client, :id, :nome, :advogado
  json.url client_url(client, format: :json)
end
