class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :fullname, null: false
      t.string :email, null: false
      t.string :paswword_digest, null: false
      t.string :access_token

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
    add_index :users, :fullname  
  end
end
