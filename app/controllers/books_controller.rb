class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(blog.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
