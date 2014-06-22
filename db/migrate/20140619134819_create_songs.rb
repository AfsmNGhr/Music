class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :author
      t.references :playlist, index: true
      t.timestamps
    end
  end
end
