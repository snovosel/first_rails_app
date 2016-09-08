class TagsController < ApplicationController

  def show
    @tags = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.destroy(params[:id])

    flash.notice = "Tag '#{@tag.name}' Removed"

    redirect_to action: "index"
  end

end
