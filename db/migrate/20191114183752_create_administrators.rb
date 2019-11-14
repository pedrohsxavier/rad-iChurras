class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :nome
      t.string :matricula
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
