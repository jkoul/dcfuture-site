class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :fname
      t.string :lname
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :ward
      t.date :join_date
      t.string :upload_pic
      t.integer :birthyear
      t.boolean :member

      t.timestamps
    end
  end
end
