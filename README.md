This app uses the 'friendly_id' gem: https://github.com/norman/friendly_id

And simple_form

These are the commands I ran:

bundle

rails g simple_form:install

rails g controller home index

rails g scaffold Category name slug

rails g scaffold Book category:references title author image info:text slug:index featured:boolean

Before I run the migration, I change the `featured` line in the `db/create_books migration file`.

```
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
```

* install friendly id*

rails g friendly_id

I created a seeds.rb file - check how I did it :)

Check the model files for Category and Book - you'll see the relationship setup and friendly_id setup

I have added the friendly method to the set_book and set_category methods in the respective controllers..

In the home_controller, you'll see me just getting Books that are 'featured' - corresponding method in the Book model.

Then on the home page I am just displaying featured books.

Let me know if you have any issues.

Pete
