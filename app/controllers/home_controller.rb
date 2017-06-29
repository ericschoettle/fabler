class HomeController < ApplicationController
  def home
    @users = User.all
    @stories = Story.all
    @entries = Entry.all
  end
end
