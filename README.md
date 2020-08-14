# README

# deviseの導入

# PostモデルとUserモデルの紐付け
## user_idカラムを追加し、投稿の際にcurrent_user.idが打ち込まれるように

# CommentモデルとUserモデルの紐付け
## user_idカラムを追加し、投稿の際にcurrent_user.idが打ち込まれるように

# 今後のTodo
## chartkickのさらなる便利機能を模索していく

<!-- def index
    @posts = Post.where(user_id: current_user).all
    # @updateposts.update(post)
    # @posts.save
    @tags = Tag.all
end -->

# <%= column_chart Comment.where(user_id: current_user).pluck(:body, :sum) %>