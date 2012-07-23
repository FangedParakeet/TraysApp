class CreatePorcelains < ActiveRecord::Migration
  def change
    create_table :porcelains do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
