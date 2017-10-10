class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
