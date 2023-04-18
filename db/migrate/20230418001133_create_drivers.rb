class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :description
      t.string :skill
      t.integer :team_id

      t.timestamps
    end
  end
end
