class PostsController < ApplicationController
  def index
    @posts=Post.all
    @tags=Tag.all
  end

  def new
    @post=Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to :root
    else
      render action: :new
    end
  end

  def show
  end

  private
    def post_params
      params.require(:post).permit(:body,:detail,:time, tag_ids: [])
    end
end
