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
    render "confirm_create"
  end
  
  def select
    @books = Book.all
  end
  
  def delete
    @book = Book.find(params["id"])
    @book.destroy
    render "confirm_destroy"
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params["id"])
    @book.update_attributes({title: params["title"], rating: params["rating"]})
    render "show"
  end
  
end

