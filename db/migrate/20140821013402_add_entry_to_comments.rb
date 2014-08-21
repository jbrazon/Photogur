class AddEntryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :entry, :text
  end
end
