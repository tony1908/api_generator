class NuevoController < ApplicationController
	def create
		@nuevo = Nuevo.New params_nuevo
		if @nuevo.save!
			render json: {status:0}
		else
			render json: {status:1}
		end
	end

	def show
		@nuevo = Nuevo.find(params[:id])
		render @nuevo.to_json
	end

	def all
		@nuevos = Nuevo.all
		render @nuevos.to_json
	end

	def update
		@nuevo = Nuevo.find(params[:id])
		if @nuevo.update_attributes! params_nuevo
			render json: {status:0}
		else
			render json: {status:1}
		end
	end

	def destroy
		@nuevo = Nuevo.find(params[:id])
		@nuevo.destroy
			render json: {status: 0}
		else
			render json: {status: 1}
		end
	end

	protected
	 def params_nuevo
	 	params.permit(:hola,)
	 end
end