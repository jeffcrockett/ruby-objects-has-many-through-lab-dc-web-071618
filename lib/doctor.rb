require_relative 'appointment'

class Doctor
  @@all = []

  attr_accessor :name

  def self.all
    @@all.each do |doctor| puts doctor.name end
  end

  def initialize(name)
    @name = name
    @patients = []
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    # Patient.all.select do |patient|
    #   appointment.patient
  end

end
