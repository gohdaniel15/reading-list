class BookmarksController < ApplicationController

  before_action :prepare_book

  def new; end

  def create
    @bookmark = @book.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:page_number, :description)
  end

  def prepare_book
    @book = Book.find(params[:book_id])
  end

end
