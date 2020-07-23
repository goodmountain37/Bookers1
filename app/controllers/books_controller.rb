class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def edit
    @book = Book.fins(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
