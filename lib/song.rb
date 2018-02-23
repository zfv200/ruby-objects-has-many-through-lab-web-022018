require 'pry'
class Song
  attr_accessor :genre, :name, :artist


  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

end


class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @patients << appointment.patient
    @appointments << appointment
  end

end

class Patient
  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @doctors << appointment.doctor
    @appointments << appointment
  end

end

class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
  end

end
