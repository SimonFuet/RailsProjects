class ArticlesController < ApplicationController

  def index
    @all_articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

end
