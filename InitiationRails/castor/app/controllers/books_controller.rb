class BooksController < ApplicationController
  def index
    @all_books = Book.page(params[:page]).per(10)
    @categories = Category.all
  end

  def create
    Book.create title: params[:title], category_id: params[:category_id]
    redirect_to "/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update title:  params[:title]
      redirect_to "/books/#{@book.id}"
    else
      render :show
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to "/books"
  end

end
