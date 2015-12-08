class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :username
      t.string :email_address
      t.string :password_digest

      t.timestamps
    end
  end
end
