require_relative 'appointment'

class Patient
  @@all = []

  def self.all
    @@all.each do |patient|
      puts patient
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
  end

  def doctors
    # Appointment.all.select do |appointment| 
    #   appointment.doctor
  end
end
