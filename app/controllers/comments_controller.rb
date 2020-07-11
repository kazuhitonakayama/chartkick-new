class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.build(comment_params)
    @comment.body = post.body
    @comment.sum = @comment.time + post.comments.sum(:time)
    # post.time=post.time + @comment.time
    if @comment.save
        redirect_to :root
    else
        render action: :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:detail,:time,:post_id)
    end
end
