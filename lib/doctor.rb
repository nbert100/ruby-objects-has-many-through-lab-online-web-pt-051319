class Doctor
  attr_accessor :name, :appointment, :patient
  @@all_doctors = []
  
  def initialize(name)
    @name = name
    @@all_doctors << self
  end
  
  def self.all 
    @@all_doctors
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  # doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
    
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients
     self.appointments.collect {|appointment| appointment.patient}
    end
end