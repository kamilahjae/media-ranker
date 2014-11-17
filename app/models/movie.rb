class Movie < ActiveRecord::Base
  validates :name, :director, :description, presence: true
end
