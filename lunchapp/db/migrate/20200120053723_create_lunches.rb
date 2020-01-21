class CreateLunches < ActiveRecord::Migration[6.0]
  def change
    create_table :lunches do |t|
      t.integer :cost_rands
      t.integer :cost_cents
      t.integer :enjoyment
      t.integer :prep_time_minutes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
