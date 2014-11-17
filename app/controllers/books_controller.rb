class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)

    if @book.save
      redirect_to book_path(@book)
    else
      @book.errors
      render "new"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def books_params
    params.require(:book).permit(:name, :author, :description)
  end
end
