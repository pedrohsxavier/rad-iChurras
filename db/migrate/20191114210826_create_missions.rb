class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.boolean :status
      t.references :administrator, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
