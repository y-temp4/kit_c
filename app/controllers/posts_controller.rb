class PostsController < ApplicationController
  def index
    @posts = Post.where(department_id: params[:department_id])
  end

  def create
	  @post = Post.new
	  @post.content = params[:post][:content]
	  @post.department_id = params[:post][:department_id]
	  @post.save
	  redirect_to department_posts_path params[:post][:department_id]
  end
end
