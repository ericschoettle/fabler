class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @users = User.all
    @story = Story.find(params[:story_id])
    # @entry = @story.entries.new
    @entry = Entry.new(:user_id => 0, :story_id => @story.id )
    @entryUrl = @entry.newImage()
    @entry.save
  end

  def create
    @users = User.all
    @story = Story.find(params[:story_id])
    temp_entry = @story.entries.last
    @entry = @story.entries.new(:user_id => entry_params["user_id"], :story_id => @story.id, :image_url => temp_entry.image_url, :sentence => entry_params["sentence"])
    binding.pry
    if @entry.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

private

  def entry_params
    params.require(:entry).permit(:story_id, :user_id, :image_url, :sentence)
  end
end
