class CreateUser < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false, index: { unique: true }
      t.string :username, null: false, index: { unique: true }
      t.string :password_digest
      t.date :date_of_birth
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
