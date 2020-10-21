json.extract! search_item, :id, :title, :text, :link, :keywords, :created_at, :updated_at
json.url search_item_url(search_item, format: :json)
