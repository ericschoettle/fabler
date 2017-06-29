class Entry < ApplicationRecord
  belongs_to :user
  belongs_to :story

  validates_presence_of :user_id
  validates_presence_of :story_id

  def newImage()
    response = RestClient.get "http://www.splashbase.co/api/v1/images/random"
    self.image_url = JSON.parse(response.body).fetch('url')
  

  end
end
