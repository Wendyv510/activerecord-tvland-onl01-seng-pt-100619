class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters 
  
  belongs_to :network
  
  def actors_list
    #Show.actors.collect {|actor| actor.full_name}
    self.actors.map {|c| "#{c.name} - #{c.show.name}"}
  end 
  
  
    
  
end