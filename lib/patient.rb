class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(a)
    @appointments << a
    a.patient = self
  end
  def appointments
    @appointments
  end
  def doctors
    @appointments.collect {|a| a.doctor}
  end
end
