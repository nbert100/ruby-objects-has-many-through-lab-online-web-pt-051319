require 'pry'
class Patient
  attr_accessor :name, :appointment, :doctor
  @@all_pts = []
  
  def self.all 
    @@all_pts
  end
  
  def initialize(name)
    @name = name
    @appointment = appointment
    @@all_pts << self
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
   
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointment.all.collect{|appointment| appointment.doctor}
    #Song.all.collect {|song| song.artist}
    
  end
  binding.pry
end