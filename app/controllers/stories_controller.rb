class StoriesController < ApplicationController
  def index
    @stories = Story.all

  end
  def show
    @story = Story.find(params[:id])
  end
  # def new
  #   # @story = Story.new
  # end


  def new
    @story = Story.new()
    if @story.save
      redirect_to new_story_entry_path(@story)
    else
      render :new
    end
  end


private

  def story_params
    params.require(:story)
  end
end
