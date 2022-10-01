class BooksController < ApplicationController

  def new
    @book = Book.new(book_params)
  end

  def create
    @book = Book.new(book_params)
     if @book.save
       redirect_to books_path
     else
       render :new
     end
  end

  def index
    @books = Book.all
  end

  def book_params
    params.require(:book).permit(title, :body)
  end

end
