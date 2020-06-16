class Doctor 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.collect do |appointment| 
      appointment.doctor == self
    end 
  end 
  
  def patients
    
  end 
  
  def self.all 
    @@all 
  end
  
end 