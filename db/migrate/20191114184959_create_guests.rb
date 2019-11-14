class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :nome
      t.string :email
      t.references :administrator

      t.timestamps
    end
  end
end
