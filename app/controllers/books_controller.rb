class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  def create
    console
    @new_book = Book.new(title: params["title"], rating: params["rating"])
    console
    if @new_book.valid?
      @new_book.save
    else
      @error_message = "Invalid book information."
    end
    render :confirm_create
  end
  
end

