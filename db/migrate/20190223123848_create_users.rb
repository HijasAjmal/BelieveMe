class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :middle_name, :null => true
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :password, :null => false
      t.string :confirmation_token, :null => true
      t.date :confirmed_at, :default => nil
      t.string :remember_token, :default => nil
      t.boolean :profile_status, :default => false
      t.boolean :admin, :default => false, :null => false
      t.boolean :student, :default => false, :null => false
      t.boolean :teacher, :default => false, :null => false
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
