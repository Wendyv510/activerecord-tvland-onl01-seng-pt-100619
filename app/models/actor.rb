class Actor < ActiveRecord::Base
    
    has_many :characters 
    has_many :shows, through: :characters 
    
  def full_name(first_name) 
    "#{self.first_name}#{self.last_name}" 
  # actor = Actor.new(:first_name => "first_name", :last_name => "last_name")
   # actor.save
  end 
  
  def list_roles 
    self.characters.map {|c| "#{c.name} - #{c.show.name}"}
  end 
  
end