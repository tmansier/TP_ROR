class ChangeFilename < ActiveRecord::Migration
  def change
      rename_column :photos, :firstname, :filename
  end
end
