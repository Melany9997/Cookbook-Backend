class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to caterogy_path(@category)
    else
      render "category/show", status: :unprocessable_entity
  end
end
