class PostsController < ApplicationController
  def index
    @department_name = Department.find_by(id: params[:department_id]).name
    @posts = Post.where(department_id: params[:department_id])
                 .page(params[:page])
                 .per(10)
                 .order("id DESC")
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to department_posts_path params[:post][:department_id]
    else
      flash[:danger] = "書き込みに失敗しました。空では書き込みできません。"
      redirect_to department_posts_path params[:post][:department_id]
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :department_id, :session_id)
  end
end
