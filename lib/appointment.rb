class Appointment

  @@appointments = []

  attr_accessor :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@appointments << self
  end

  def self.all
    @@appointments
  end

  def doctor
    @doctor
  end

  def patient
    @patient
  end

end
