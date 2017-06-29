class User < ApplicationRecord
  has_many :entries
  has_many :stories, through: :entries

  validates :name, :presence => true
end
