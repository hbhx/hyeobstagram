class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def new
  end

  def create
    post = Post.new
    post.content = params[:content]
    post.tag = params[:tag]
    post.user_name = params[:user_name]
    post.save
    
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    @post.content = params[:content]
    @post.tag = params[:tag]
    @post.user_name = params[:user_name]
    @post.save
    
    redirect_to '/'
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    
    redirect_to '/'
  end
end
