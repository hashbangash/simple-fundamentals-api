# frozen_string_literal: true

class CommentsController < OpenReadController
  before_action :set_comment, only: %i[show update destroy]

  # GET /comments
  def index
    @comments = if params[:user_comments]
                  current_user.comments
                else
                  Comment.all
                end
    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @comment = current_user.cards.build(comment_params)

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    @comment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = current_user.comments.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def comment_params
    params.require(:comment).permit(:commentText,
                                    :author,
                                    :user_id,
                                    :card_id,
                                    :user_comments)
  end
end
