class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.create(bookmark_params)

    if @bookmark.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(@bookmark.category)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id)
  end
end
