class PublishersController < ApplicationController
  
  def index
    @publishers = Publisher.all
  end
  
  def new
    @publisher = Publisher.new
  end
  
  def create
    @publisher = Publisher.new(params["publisher"])
    if @publisher.valid?
      @publisher.save
    else
      @error_message = "Invalid publisher information."
    end
    render "/publishers/confirm_create"
  end
  
  def show
    @publisher = Publisher.find(params[:id])
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def update
    @publisher = Publisher.find(params["id"])
    @publisher.update_attributes({name: params["name"]})
    render "/publishers/show"
  end
  
  def books
    @publisher = Publisher.find(params[:id])
    @books = @publisher.books
    render "publishers/show_books"
  end
  
  def select
    @publishers = Publisher.all
  end
  
  def delete
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    render "publishers/confirm_destroy"
  end
end
