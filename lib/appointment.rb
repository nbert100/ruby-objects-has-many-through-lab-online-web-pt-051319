class Appointment
  attr_accessor :date, :doctor, :patient
  @@all_appts = []
  
  def initialize(date, patient, doctor)
    @date = date 
    @patient = patient
    @doctor = doctor
    @@all_appts << self
  end
  
  def self.all
    @@all_appts
  end
 
end