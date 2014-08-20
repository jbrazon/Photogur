class AddSubmittedByToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :submitted_by, :string
  end
end
