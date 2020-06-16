class Patient
 attr_accessor :name 
 @@all = []
 
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, patient, self)
  end
end 