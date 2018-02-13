class Villian < ActiveRecord::Base

  # def super
  #   Superheroe.where(villian_id: self.id)
  # end

  has_one :superhero,
  primary_key: :id,
  foreign_key: :villian_id,
  class_name: 'Superheroe'

  has_many :movies,
  through: :superhero,
  source: :superhero_movies
end
