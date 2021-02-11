class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.text :name
      t.text :address
      t.text :city
      t.text :pets

      t.timestamps
    end
  end
end
