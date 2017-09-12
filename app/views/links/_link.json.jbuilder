json.extract! link, :id, :given_url, :shorten_url, :clicks, :title, :created_at, :updated_at
json.url link_url(link, format: :json)
