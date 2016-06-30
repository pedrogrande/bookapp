class HomeController < ApplicationController
  def index
    @featured_books = Book.featured
  end
end
