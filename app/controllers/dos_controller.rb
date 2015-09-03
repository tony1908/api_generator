class DosController < ApplicationController
	def create
		@dos = Dos.New params_dos
		if @dos.save!
			render json: {status:0}
		else
			render json: {status:1}
		end
	end

	def show
		@dos = Dos.find(params[:id])
		render @dos.to_json
	end

	def all
		@doss = Dos.all
		render @doss.to_json
	end

	def update
		@dos = Dos.find(params[:id])
		if @dos.update_attributes! params_dos
			render json: {status:0}
		else
			render json: {status:1}
		end
	end

	def destroy
		@dos = Dos.find(params[:id])
		@dos.destroy
			render json: {status: 0}
		else
			render json: {status: 1}
		end
	end

	protected
	 def params_dos
	 	params.permit(:hola,)
	 end
end