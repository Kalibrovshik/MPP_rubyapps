class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :libraryname
      t.string :author
      t.string :genre
      t.string :bookname
      t.string :readers_card
      t.string :user

      t.timestamps
    end
  end
end
