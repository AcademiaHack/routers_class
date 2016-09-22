class RecordsController < ApplicationController
  def index
  	@records = Record.all
  end

  def show
  	@patient = Patient.find(params[:patient_id])
  	@patient.records.where(id: params[:id]).take
  end

  def create
  	@record = Record.new(params[:records]) # {name: "Carlos", last_name: "torrealba"}
  	
  	if @record.save
  		# Vamos a show
  	else
  		# Muestrame los errores
  	end
  end

  def destroy
  	@record = Record.find(params[:id])
  	@record.destroy
  	# Vamos al index
  end

  def edit
  	@record = Record.find(params[:id])
  end

  def new
  	@patient = Patient.find(params[:patient_id])
  	@record = @patient.records.build
  end

  def update
  	@record = Record.find(params[:id])
  	if @record.update(params[:patient_params])
  		# Vamos a el show
  	else
  		# Muestrame los errores
  	end
  end

  def print
  	
  end

end
