class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.text  :name, null: false
      # t.index :name, unique: true
      t.timestamps
    end
  end
end
