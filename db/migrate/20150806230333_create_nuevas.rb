class CreateNuevas < ActiveRecord::Migration
  def change
    create_table :nuevas do |t|
      t.stringclear :coma

      t.timestamps null: false
    end
  end
end
