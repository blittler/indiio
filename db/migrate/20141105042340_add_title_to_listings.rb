class AddTitleToListings < ActiveRecord::Migration
  def change
    add_column :listings, :title, :string
    add_index :listings, :title
  end
end
