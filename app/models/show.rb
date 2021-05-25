class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors , through: :characters
  belongs_to :network

  def actors_list
  self.actors.map do |a|
    a.full_name
  end
 end

end

# class Show < ActiveRecord::Base
#   has_many :characters
#   belongs_to :network
#   has_many :actors, through: :characters

#   def actors_list
#     self.actors.map{|actor| actor.full_name}
#   end
# end