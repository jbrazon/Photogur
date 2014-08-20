class AddLikesToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :likes, :integer, default: 0, null: false
  end
end
