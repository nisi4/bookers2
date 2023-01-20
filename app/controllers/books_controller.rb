class BooksController < ApplicationController
  
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    book = Book.new(book_pasams)
    book.user_id = current_user.id
    book.save
    redirect_to book_path(:id)
  end
    

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  
  def book_pasams
    params.require(:book).permit(:title,:body)
  end
end
