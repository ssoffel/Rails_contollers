class Movie < ActiveRecord::Base

  belongs_to :superhero_movie,
  primary_key: :id,
  foreign_key: :super_id,
  class_name: 'Superheroe'
end
