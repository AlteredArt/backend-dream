class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :date
      t.string :description
      t.integer :mood
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
