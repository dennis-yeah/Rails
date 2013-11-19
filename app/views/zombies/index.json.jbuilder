json.array!(@zombies) do |zombie|
  json.extract! zombie, :name, :email, :growl
  json.url zombie_url(zombie, format: :json)
end
