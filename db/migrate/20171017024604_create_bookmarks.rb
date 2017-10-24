class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.integer :page_number, null: false
      t.text :description
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
