class BooksController < ApplicationController

  before_action :prepare_book, only: [:edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @book.update(books_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def books_params
    params.require(:book).permit(:title, :author)
  end

  def prepare_book
    @book = Book.find(params[:id])
  end

end
