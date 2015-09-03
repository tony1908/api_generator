class CreateDoss < ActiveRecord::Migration
  def change
    create_table :doss do |t|
    	
    	t.string :hola
    	
      t.timestamps null: false
    end
  end
end