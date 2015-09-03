class Create<%= controller_name %>s < ActiveRecord::Migration
  def change
    create_table :<%= name %>s do |t|
    	<% field.each do |a,b| %>
    	t.<%= b %> :<%= a %>
    	<% end %>
      t.timestamps null: false
    end
  end
end