class PatientsController < ApplicationController
  def index
  	@patients = Patient.all
  end

  def show
  	@patient = Patient.find(params[:id])
  end

  def create
  	@patient = Patient.new(params[:patients]) # {name: "Carlos", last_name: "torrealba"}
  	
  	if @patient.save
  		# Vamos a show
  	else
  		# Muestrame los errores
  	end
  end

  def destroy
  	@patient = Patient.find(params[:id])
  	@patient.destroy
  	# Vamos al index
  end

  def edit
  	@patient = Patient.find(params[:id])
  end

  def new
  	@patient = Patient.new
  end

  def update
  	@patient = Patient.find(params[:id])
  	if @patient.update(params[:patient_params])
  		# Vamos a el show
  	else
  		# Muestrame los errores
  	end
  end 
end
