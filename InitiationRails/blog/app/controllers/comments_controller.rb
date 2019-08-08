class CommentsController < ApplicationController

  def create
    Comment.create author: params[:author], content: params[:content], article_id: params[:article_id]
    redirect_to "/articles/#{params[:article_id]}"
  end

end
