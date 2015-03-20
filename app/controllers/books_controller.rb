class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end
  
  def create
    @new_book = Book.new(title: params["title"], rating: params["rating"])
    puts @new_book
    if @new_book.valid?
      @new_book.save
    else
      @error_message = "Invalid book information."
    end
    render "/books/confirm_create"
  end
  
  def select
    @books = Book.all
  end
  
  def delete
    @book = Book.find(params["id"])
    @book.destroy
    render "/books/confirm_destroy"
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
    @publishers = Publisher.all
  end
  
  def update
    @book = Book.find(params["id"])
    @book.update_attributes({title: params["title"], 
      rating: params["rating"],
      publisher_id: params["publisher_id"]})
    render "/books/show"
  end
  
end

