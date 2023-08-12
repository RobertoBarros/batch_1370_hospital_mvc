require_relative '../views/appointments_view'

class AppointmentsController

  def initialize(appointment_repository, doctor_repository, patient_repository)
    @appointment_repository = appointment_repository
    @doctor_repository = doctor_repository
    @patient_repository = patient_repository
    @view = AppointmentsView.new
    @doctors_view = DoctorsView.new
    @patients_view = PatientsView.new
  end

  def create
    # Escolhendo um patient
    patients = @patient_repository.all
    @patients_view.list(patients)
    index = @patients_view.ask_index
    patient = patients[index]

    # Escolhendo um doctor
    doctors = @doctor_repository.all
    @doctors_view.list(doctors)
    index = @doctors_view.ask_index
    doctor = doctors[index]

    #Perguntar a data
    date = @view.ask_date

    # Instanciar um appointment
    appointment = Appointment.new(date:, doctor:, patient:)

    # Adicionar ao repositório
    @appointment_repository.add(appointment)

  end

  def list
    appointments = @appointment_repository.all
    @view.list(appointments)
  end

end
