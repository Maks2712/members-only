class PostsController < ApplicationController
  before_action :authenticate_user, only: [:new, :create]
  before_action :set_user

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post=Post.new(post_params)
    @post.author=current_user.email.downcase
    if @post.save
          redirect_to posts_path
    else
          render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user=current_user
    end
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body, :author)
    end
end
