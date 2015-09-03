class <%= controller_name %>Controller < ApplicationController
	def create
		@<%= name %> = <%= controller_name %>.New params_<%= name %>
		if @<%= name %>.save!
			render json: {status:0}
		else
			render json: {status:1}
		end
	end

	def show
		@<%= name %> = <%= controller_name %>.find(params[:id])
		render @<%= name %>.to_json
	end

	def all
		@<%= name %>s = <%= controller_name %>.all
		render @<%= name %>s.to_json
	end

	def update
		@<%= name %> = <%= controller_name %>.find(params[:id])
		if @<%= name %>.update_attributes! params_<%= name %>
			render json: {status:0}
		else
			render json: {status:1}
		end
	end

	def destroy
		@<%= name %> = <%= controller_name %>.find(params[:id])
		@<%= name %>.destroy
			render json: {status: 0}
		else
			render json: {status: 1}
		end
	end

	protected
	 def params_<%= name %>
	 	params.permit(<% field.each do |a,b| %>:<%= a %>,<% end %>)
	 end
end