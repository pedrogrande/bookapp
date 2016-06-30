json.array!(@books) do |book|
  json.extract! book, :id, :category_id, :title, :author, :image, :info, :slug, :featured
  json.url book_url(book, format: :json)
end
