class Superheroe < ActiveRecord::Base

 # def vill
 #   Villian.find(self.villian_id)
 # end
 validates :name, presence: true, uniqueness: true

 belongs_to :villian,
 primary_key: :id,
 foreign_key: :villian_id,
 class_name: 'Villian'

 has_many :superhero_movies,
 primary_key: :id,
 foreign_key: :super_id,
 class_name: 'Movie'


end
