require_relative 'appointment'

class Doctor
  @@all = []

  attr_accessor :name

  def self.all
    @all.each do |appointment| puts appointment end
  end

  def initialize(name)
    @name = name
    @all << self
    @appointments = []
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    self.appointments.map do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end
  end

end
