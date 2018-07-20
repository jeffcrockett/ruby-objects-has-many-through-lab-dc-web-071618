require_relative 'doctor'
require_relative 'patient'

class Appointment
  @@all = []

  def self.all
    @@all.each do |appointment|
      puts appointment
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end
end
