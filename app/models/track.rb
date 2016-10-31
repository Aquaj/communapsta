class Track < ActiveRecord::Base
  def self.find_from_napster(title)
    NapsterService.new.find_track(name: title)
  end
end
