class CreateNueva2s < ActiveRecord::Migration
  def change
    create_table :nueva2s do |t|
      t.string :coma

      t.timestamps null: false
    end
  end
end
