class AddNameToLunch < ActiveRecord::Migration[6.0]
  def change
    add_column :lunches, :name, :string
  end
end
