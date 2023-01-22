class UsersController < ApplicationController
  def new
  end
  
  def create
  end

  def index
    @book = Book.new 
    @users = User.all
    @user = current_user
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
  
  
end
