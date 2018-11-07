class Doctor

  @@doctors = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@doctors << self
  end

  def self.all
    @@doctors
  end

  def name
    @name
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    appointment
  end

  def appointments
    Appointment.all.select {|appointment| appointment if appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end

end
