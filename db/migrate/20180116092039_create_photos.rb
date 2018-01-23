class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string "firstname"
      t.integer "user_id"
      t.string "name"
      t.timestamps
    end
  end
end
