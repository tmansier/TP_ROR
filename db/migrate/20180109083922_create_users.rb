class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "firstname"
      t.string "lastname"
      t.string "age"
      t.timestamps
    end
  end
end
