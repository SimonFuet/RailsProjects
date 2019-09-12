class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(10)
    @categories = Category.all
    @book = Book.new
  end

  def create
    @book = Book.new title: params[:title], category_id: params[:category_id]
    if @book.save
      flash[:success] = "Le livre a bien été créé"
      redirect_to "/books/#{@book.id}"
    else
      @books = Book.all
      render "index"
    end
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  def update
    @book = Book.find(params[:id])
    if @book.update title:  params[:title]
      flash[:success] = "Le livre a bien été mis à jour"
      redirect_to "/books/#{@book.id}"
    else
      render :show
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end

end
