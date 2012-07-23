class CreateTrays < ActiveRecord::Migration
  def change
    create_table :trays do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
