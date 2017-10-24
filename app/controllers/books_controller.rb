class BooksController < ApplicationController

  before_action :prepare_book, only: [:edit, :update, :destroy, :read, :unread]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    byebug
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

  def read
    @book.update(read: true)
    redirect_to books_path
  end

  def unread
    @book.update(read: false)
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
