class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.string :author
      t.string :image
      t.text :info
      t.string :slug
      t.boolean :featured, default: false

      t.timestamps
    end
    add_index :books, :slug
  end
end
