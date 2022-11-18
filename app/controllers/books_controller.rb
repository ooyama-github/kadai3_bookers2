class BooksController < ApplicationController


  def create
    @books = Book.all
    @book = Book.new(book_params)
    if @book.save
    flash[:notice] ="You have created book successfully."
    redirect_to book_path(@book)
    else
      
     render :index
    end
  end


  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end