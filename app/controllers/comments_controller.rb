class CommentsController < ApplicationController
  def create
    comment = Comment.new
    
    comment.post_id = params[:post_id]
    comment.user_name = params[:user_name]
    comment.content = params[:content]
    
    comment.save
    
    redirect_to '/'
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    comment.destroy
    
    redirect_to '/'
  end
end
