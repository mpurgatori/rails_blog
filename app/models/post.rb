# class Post < ApplicationRecord
#   params.require(:post).permit(:title, :body, :category_id, :author_id)
#   belongs_to :category
# end
#
#
class Post
  belongs_to :category
  accepts_nested_attributes_for :category
end

class PostController < ActionController::Base
  def create
    Post.create(post_params)
  end


  private

    def post_params
      # It's mandatory to specify the nested attributes that should be whitelisted.
      # If you use `permit` with just the key that points to the nested attributes hash,
      # it will return an empty hash.
      params.require(:post).permit(:title, :body, :category_id, :author_id)
    end
end
