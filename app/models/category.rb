# class Category < ApplicationRecord
#   params.require(:category).permit(:name)
#   has_many :post
# end

class Category
  has_many :post
  accepts_nested_attributes_for :post
end

class CategoryController < ActionController::Base
  def create
    Category.create(category_params)
  end


  private

    def category_params
      # It's mandatory to specify the nested attributes that should be whitelisted.
      # If you use `permit` with just the key that points to the nested attributes hash,
      # it will return an empty hash.
      params.require(:category).permit(:name)
    end
end
