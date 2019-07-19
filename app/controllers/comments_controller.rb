class CommentsController < ApplicationController

  # 新しいコメントオブジェクト作成
  def new
    @comment = Comment.new
    # binding.pry
  end

  # 新しいコメントをテーブルに保存
  def create
    # binding.pry
    Comment.create(
        score: comment_params[:score],
        comment_text: comment_params[:comment_text],
        comment_image: comment_params[:comment_image],
        post_id: cookies[:post_id], #app/controllers/posts_controller.rb からcookies[:post_id]を受け取る
        user_id: current_user.id)
    redirect_to post_path(cookies[:post_id])
  end

  def show
  end

  # 口コミ編集画面に移動
  def edit
    @comment = Comment.find(params[:id])
  end

  # 口コミ内容を更新
  def update
    # binding.pry
    comment = Comment.find(params[:id])
    comment.update(comment_params)
    redirect_to post_path(cookies[:post_id])
  end

  # 口コミを削除
  def destroy
    # binding.pry
    comment = Comment.find(params[:id])
    comment.delete
    redirect_to post_path(cookies[:post_id])
  end

    private

    def comment_params
      params.require(:comment).permit(:score, :comment_text, :comment_image)
    end

end
