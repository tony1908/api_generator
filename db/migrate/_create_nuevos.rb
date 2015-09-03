class CreateNuevos < ActiveRecord::Migration
  def change
    create_table :nuevos do |t|
    	
    	t.string :hola
    	
      t.timestamps null: false
    end
  end
end