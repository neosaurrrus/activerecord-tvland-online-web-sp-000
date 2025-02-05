class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def list_roles
    roles = self.shows.map do |show| 
        "#{self.characters.first.name} - #{show.name}"
    end
    roles
  end 

end