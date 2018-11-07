class Patient

  @@patients = []

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @@patients << self
  end

  def self.all
    @@patients.uniq
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    appointment
  end

  def appointments
    Appointment.all.select {|appointment| appointment if appointment.patient == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

end
