class Appointment
  @@all = []

  def self.all
    @@all.each do |appointment| puts appointment.date end
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
  end
end
